import "package:api_viewer/infrastructure/github_api_service.dart";
import "package:dio/dio.dart";
import "package:get_it/get_it.dart";

final GetIt getIt = GetIt.instance;

void setupDI() {
  getIt..registerLazySingleton<Dio>(() {
    return Dio(
      BaseOptions(
        baseUrl: "https://api.github.com",
        headers: {"accept": "application/vnd.github+json"},
      ),
    );
  })
  ..registerLazySingleton<GithubApiService>(
        () => GithubApiService(getIt<Dio>()),
  );
}
