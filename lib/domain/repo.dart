import "package:freezed_annotation/freezed_annotation.dart";

part "repo.freezed.dart";
part "repo.g.dart";

@freezed
abstract class Repo with _$Repo {
  const factory Repo({
    required String name,
    required bool private,
    required int forks,
    @JsonKey(name: "created_at") required DateTime createdAt,
    @JsonKey(name: "updated_at") required DateTime updatedAt,
    @JsonKey(name: "pushed_at") required DateTime pushedAt,
    @JsonKey(name: "html_url") required String url,
    @JsonKey(name: "stargazers_count") required int stars,
    @Default("Unknown") String language,
    @Default("") String description,
  }) = _Repo;

  factory Repo.fromJson(Map<String, dynamic> json) => _$RepoFromJson(json);
}
