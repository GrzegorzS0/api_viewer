import "package:api_viewer/domain/repo.dart";
import "package:freezed_annotation/freezed_annotation.dart";

part "search_result.freezed.dart";

@freezed
abstract class SearchResult with _$SearchResult {
  const factory SearchResult({
    required List<Repo> repos,
    required int pageCount,
  }) = _SearchResult;
}
