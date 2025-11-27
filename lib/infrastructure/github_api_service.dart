import "package:api_viewer/domain/repo.dart";
import "package:api_viewer/domain/search_data.dart";
import "package:api_viewer/domain/search_result.dart";
import "package:dio/dio.dart";

class GithubApiService {
  GithubApiService(this._dio);

  static const int _perPage = 100;
  final Dio _dio;

  Future<SearchResult> searchRepositories(SearchData searchData) async {
    final response = await _dio.get<Map<String, dynamic>>(
      "/search/repositories",
      queryParameters: {
        "q": searchData.query,
        "per_page": _perPage,
        "page": searchData.pageNumber,
      },
    );

    final totalCount = response.data?["total_count"] as int;
    final pageCount = (totalCount / _perPage).ceil();
    final items = response.data?["items"] as List;
    final repos = items.map((json) => Repo.fromJson(json as Map<String, dynamic>)).toList();
    return SearchResult(repos: repos, pageCount: pageCount);
  }
}
