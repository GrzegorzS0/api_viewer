import "dart:async";

import "package:api_viewer/application/repo_search.dart";
import "package:api_viewer/domain/search_data.dart";
import "package:api_viewer/domain/search_result.dart";
import "package:api_viewer/infrastructure/github_api_service.dart";
import "package:fake_async/fake_async.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";
import "package:flutter_test/flutter_test.dart";
import "package:get_it/get_it.dart";

class MockGithubApiService extends Fake implements GithubApiService {
  @override
  Future<SearchResult> searchRepositories(SearchData data) async {
    return SearchResult(repos: [], pageCount: data.pageNumber);
  }
}

void main() {
  final getIt = GetIt.instance;

  setUp(getIt.reset);

  group("DebounceAndCancelExtension", () {
    /// Provider to get access to getDebouncedHttpClient
    final debounceProvider = FutureProvider<GithubApiService>((ref) {
      return ref.getDebouncedHttpClient(const Duration(milliseconds: 300));
    });

    test("Throws Cancelled when disposed before debounce completes", () {
      fakeAsync((async) {
        final mockApi = MockGithubApiService();
        getIt.registerSingleton<GithubApiService>(mockApi);

        final container = ProviderContainer();
        final future = container.read(debounceProvider.future);

        container.dispose();

        expect(
          () => future,
          throwsA(
            isA<Exception>().having(
              (e) => e.toString(),
              "message",
              contains("Cancelled"),
            ),
          ),
          reason: "Expected cancelled error",
        );
        async.elapse(const Duration(seconds: 1));
      });
    });

    test("Returns GithubApiService when not cancelled", () {
      fakeAsync((async) {
        final mockApi = MockGithubApiService();
        getIt.registerSingleton<GithubApiService>(mockApi);

        final container = ProviderContainer();

        final future = container.read(debounceProvider.future);
        expect(future, completes, reason: "Should be already completed");

        unawaited(
          future.then((value) {
            expect(value, mockApi, reason: "Should return mockApi");
          }),
        );
        async.elapse(const Duration(seconds: 1));
      });
    });

    test("RepoSearch provider cancelled by DebounceAndCancelExtension", () {
      fakeAsync((async) {
        final mockApi = MockGithubApiService();
        getIt.registerSingleton<GithubApiService>(mockApi);

        final container = ProviderContainer();
        final future = container.read(repoSearchProvider(null).future);
        container.dispose();

        expect(
          () => future,
          throwsA(
            isA<Exception>().having(
              (e) => e.toString(),
              "message",
              contains("Cancelled"),
            ),
          ),
          reason: "Expected cancelled error",
        );
        async.elapse(const Duration(seconds: 1));
      });
    });
  });

  group("RepoSearch provider result", () {
    test("RepoSearch returns null when searchData == null", () {
      final mockApi = MockGithubApiService();
      getIt.registerSingleton<GithubApiService>(mockApi);

      final container = ProviderContainer();

      unawaited(
        container.read(repoSearchProvider(null).future).then((result) => expect(result, isNull,
            reason: "Should be null")),
      );
    });

    test("RepoSearch returns null when searchData.query.isEmpty", () {
      final mockApi = MockGithubApiService();
      getIt.registerSingleton<GithubApiService>(mockApi);

      final container = ProviderContainer();

      unawaited(
        container
            .read(repoSearchProvider(const SearchData(query: "", pageNumber: 1)).future)
            .then((result) => expect(result, isNull,reason: "Should be null")),
      );
    });

    test("calls GithubApiService.searchRepositories with Fake", () {
      final mockApi = MockGithubApiService();
      getIt.registerSingleton<GithubApiService>(mockApi);

      final container = ProviderContainer();

      void fakeCall(int pageNumber) {
        final data = SearchData(query: "flutter", pageNumber: pageNumber);
        unawaited(
          container.read(repoSearchProvider(data).future).then((result) {
            expect(result?.pageCount, data.pageNumber,reason: "Should be null");
          }),
        );
      }

      for (var i = 0; i < 10; i++) {
        fakeCall(i);
      }
    });
  });
}
