// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'repo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Repo {

 String get name; bool get private; int get forks;@JsonKey(name: "created_at") DateTime get createdAt;@JsonKey(name: "updated_at") DateTime get updatedAt;@JsonKey(name: "pushed_at") DateTime get pushedAt;@JsonKey(name: "html_url") String get url;@JsonKey(name: "stargazers_count") int get stars; String get language; String get description;
/// Create a copy of Repo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RepoCopyWith<Repo> get copyWith => _$RepoCopyWithImpl<Repo>(this as Repo, _$identity);

  /// Serializes this Repo to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Repo&&(identical(other.name, name) || other.name == name)&&(identical(other.private, private) || other.private == private)&&(identical(other.forks, forks) || other.forks == forks)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.pushedAt, pushedAt) || other.pushedAt == pushedAt)&&(identical(other.url, url) || other.url == url)&&(identical(other.stars, stars) || other.stars == stars)&&(identical(other.language, language) || other.language == language)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,private,forks,createdAt,updatedAt,pushedAt,url,stars,language,description);

@override
String toString() {
  return 'Repo(name: $name, private: $private, forks: $forks, createdAt: $createdAt, updatedAt: $updatedAt, pushedAt: $pushedAt, url: $url, stars: $stars, language: $language, description: $description)';
}


}

/// @nodoc
abstract mixin class $RepoCopyWith<$Res>  {
  factory $RepoCopyWith(Repo value, $Res Function(Repo) _then) = _$RepoCopyWithImpl;
@useResult
$Res call({
 String name, bool private, int forks,@JsonKey(name: "created_at") DateTime createdAt,@JsonKey(name: "updated_at") DateTime updatedAt,@JsonKey(name: "pushed_at") DateTime pushedAt,@JsonKey(name: "html_url") String url,@JsonKey(name: "stargazers_count") int stars, String language, String description
});




}
/// @nodoc
class _$RepoCopyWithImpl<$Res>
    implements $RepoCopyWith<$Res> {
  _$RepoCopyWithImpl(this._self, this._then);

  final Repo _self;
  final $Res Function(Repo) _then;

/// Create a copy of Repo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? private = null,Object? forks = null,Object? createdAt = null,Object? updatedAt = null,Object? pushedAt = null,Object? url = null,Object? stars = null,Object? language = null,Object? description = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,private: null == private ? _self.private : private // ignore: cast_nullable_to_non_nullable
as bool,forks: null == forks ? _self.forks : forks // ignore: cast_nullable_to_non_nullable
as int,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,pushedAt: null == pushedAt ? _self.pushedAt : pushedAt // ignore: cast_nullable_to_non_nullable
as DateTime,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,stars: null == stars ? _self.stars : stars // ignore: cast_nullable_to_non_nullable
as int,language: null == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [Repo].
extension RepoPatterns on Repo {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Repo value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Repo() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Repo value)  $default,){
final _that = this;
switch (_that) {
case _Repo():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Repo value)?  $default,){
final _that = this;
switch (_that) {
case _Repo() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  bool private,  int forks, @JsonKey(name: "created_at")  DateTime createdAt, @JsonKey(name: "updated_at")  DateTime updatedAt, @JsonKey(name: "pushed_at")  DateTime pushedAt, @JsonKey(name: "html_url")  String url, @JsonKey(name: "stargazers_count")  int stars,  String language,  String description)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Repo() when $default != null:
return $default(_that.name,_that.private,_that.forks,_that.createdAt,_that.updatedAt,_that.pushedAt,_that.url,_that.stars,_that.language,_that.description);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  bool private,  int forks, @JsonKey(name: "created_at")  DateTime createdAt, @JsonKey(name: "updated_at")  DateTime updatedAt, @JsonKey(name: "pushed_at")  DateTime pushedAt, @JsonKey(name: "html_url")  String url, @JsonKey(name: "stargazers_count")  int stars,  String language,  String description)  $default,) {final _that = this;
switch (_that) {
case _Repo():
return $default(_that.name,_that.private,_that.forks,_that.createdAt,_that.updatedAt,_that.pushedAt,_that.url,_that.stars,_that.language,_that.description);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  bool private,  int forks, @JsonKey(name: "created_at")  DateTime createdAt, @JsonKey(name: "updated_at")  DateTime updatedAt, @JsonKey(name: "pushed_at")  DateTime pushedAt, @JsonKey(name: "html_url")  String url, @JsonKey(name: "stargazers_count")  int stars,  String language,  String description)?  $default,) {final _that = this;
switch (_that) {
case _Repo() when $default != null:
return $default(_that.name,_that.private,_that.forks,_that.createdAt,_that.updatedAt,_that.pushedAt,_that.url,_that.stars,_that.language,_that.description);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Repo implements Repo {
  const _Repo({required this.name, required this.private, required this.forks, @JsonKey(name: "created_at") required this.createdAt, @JsonKey(name: "updated_at") required this.updatedAt, @JsonKey(name: "pushed_at") required this.pushedAt, @JsonKey(name: "html_url") required this.url, @JsonKey(name: "stargazers_count") required this.stars, this.language = "Unknown", this.description = ""});
  factory _Repo.fromJson(Map<String, dynamic> json) => _$RepoFromJson(json);

@override final  String name;
@override final  bool private;
@override final  int forks;
@override@JsonKey(name: "created_at") final  DateTime createdAt;
@override@JsonKey(name: "updated_at") final  DateTime updatedAt;
@override@JsonKey(name: "pushed_at") final  DateTime pushedAt;
@override@JsonKey(name: "html_url") final  String url;
@override@JsonKey(name: "stargazers_count") final  int stars;
@override@JsonKey() final  String language;
@override@JsonKey() final  String description;

/// Create a copy of Repo
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RepoCopyWith<_Repo> get copyWith => __$RepoCopyWithImpl<_Repo>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RepoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Repo&&(identical(other.name, name) || other.name == name)&&(identical(other.private, private) || other.private == private)&&(identical(other.forks, forks) || other.forks == forks)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.pushedAt, pushedAt) || other.pushedAt == pushedAt)&&(identical(other.url, url) || other.url == url)&&(identical(other.stars, stars) || other.stars == stars)&&(identical(other.language, language) || other.language == language)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,private,forks,createdAt,updatedAt,pushedAt,url,stars,language,description);

@override
String toString() {
  return 'Repo(name: $name, private: $private, forks: $forks, createdAt: $createdAt, updatedAt: $updatedAt, pushedAt: $pushedAt, url: $url, stars: $stars, language: $language, description: $description)';
}


}

/// @nodoc
abstract mixin class _$RepoCopyWith<$Res> implements $RepoCopyWith<$Res> {
  factory _$RepoCopyWith(_Repo value, $Res Function(_Repo) _then) = __$RepoCopyWithImpl;
@override @useResult
$Res call({
 String name, bool private, int forks,@JsonKey(name: "created_at") DateTime createdAt,@JsonKey(name: "updated_at") DateTime updatedAt,@JsonKey(name: "pushed_at") DateTime pushedAt,@JsonKey(name: "html_url") String url,@JsonKey(name: "stargazers_count") int stars, String language, String description
});




}
/// @nodoc
class __$RepoCopyWithImpl<$Res>
    implements _$RepoCopyWith<$Res> {
  __$RepoCopyWithImpl(this._self, this._then);

  final _Repo _self;
  final $Res Function(_Repo) _then;

/// Create a copy of Repo
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? private = null,Object? forks = null,Object? createdAt = null,Object? updatedAt = null,Object? pushedAt = null,Object? url = null,Object? stars = null,Object? language = null,Object? description = null,}) {
  return _then(_Repo(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,private: null == private ? _self.private : private // ignore: cast_nullable_to_non_nullable
as bool,forks: null == forks ? _self.forks : forks // ignore: cast_nullable_to_non_nullable
as int,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,pushedAt: null == pushedAt ? _self.pushedAt : pushedAt // ignore: cast_nullable_to_non_nullable
as DateTime,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,stars: null == stars ? _self.stars : stars // ignore: cast_nullable_to_non_nullable
as int,language: null == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
