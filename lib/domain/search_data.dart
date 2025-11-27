import "package:freezed_annotation/freezed_annotation.dart";

part "search_data.freezed.dart";

@freezed
abstract class SearchData with _$SearchData {
  const factory SearchData({
    required String query,
    required int pageNumber,
  }) = _SearchData;
}
