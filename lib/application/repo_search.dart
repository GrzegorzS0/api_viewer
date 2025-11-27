import "package:api_viewer/core/di.dart";
import "package:api_viewer/domain/search_data.dart";
import "package:api_viewer/domain/search_result.dart";
import "package:api_viewer/infrastructure/github_api_service.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";
import "package:riverpod_annotation/riverpod_annotation.dart";

part "repo_search.g.dart";

@riverpod
class RepoSearch extends _$RepoSearch {
  @override
  Future<SearchResult?> build(SearchData? searchData) async {
    final api = await ref.getDebouncedHttpClient();

    if (searchData == null || searchData.query.isEmpty) return null;

    return api.searchRepositories(searchData);
  }
}

extension DebounceAndCancelExtension on Ref {
  Future<GithubApiService> getDebouncedHttpClient([Duration? duration]) async {
    var didDispose = false;
    onDispose(() => didDispose = true);

    await Future<void>.delayed(duration ?? const Duration(milliseconds: 300));

    if (didDispose) {
      throw Exception("Cancelled");
    }

    final client = getIt<GithubApiService>();
    return client;
  }
}
