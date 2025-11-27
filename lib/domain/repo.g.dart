// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Repo _$RepoFromJson(Map<String, dynamic> json) => _Repo(
  name: json['name'] as String,
  private: json['private'] as bool,
  forks: (json['forks'] as num).toInt(),
  createdAt: DateTime.parse(json['created_at'] as String),
  updatedAt: DateTime.parse(json['updated_at'] as String),
  pushedAt: DateTime.parse(json['pushed_at'] as String),
  url: json['html_url'] as String,
  stars: (json['stargazers_count'] as num).toInt(),
  language: json['language'] as String? ?? "Unknown",
  description: json['description'] as String? ?? "",
);

Map<String, dynamic> _$RepoToJson(_Repo instance) => <String, dynamic>{
  'name': instance.name,
  'private': instance.private,
  'forks': instance.forks,
  'created_at': instance.createdAt.toIso8601String(),
  'updated_at': instance.updatedAt.toIso8601String(),
  'pushed_at': instance.pushedAt.toIso8601String(),
  'html_url': instance.url,
  'stargazers_count': instance.stars,
  'language': instance.language,
  'description': instance.description,
};
