// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SearchData {

 String get query; int get pageNumber;
/// Create a copy of SearchData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchDataCopyWith<SearchData> get copyWith => _$SearchDataCopyWithImpl<SearchData>(this as SearchData, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchData&&(identical(other.query, query) || other.query == query)&&(identical(other.pageNumber, pageNumber) || other.pageNumber == pageNumber));
}


@override
int get hashCode => Object.hash(runtimeType,query,pageNumber);

@override
String toString() {
  return 'SearchData(query: $query, pageNumber: $pageNumber)';
}


}

/// @nodoc
abstract mixin class $SearchDataCopyWith<$Res>  {
  factory $SearchDataCopyWith(SearchData value, $Res Function(SearchData) _then) = _$SearchDataCopyWithImpl;
@useResult
$Res call({
 String query, int pageNumber
});




}
/// @nodoc
class _$SearchDataCopyWithImpl<$Res>
    implements $SearchDataCopyWith<$Res> {
  _$SearchDataCopyWithImpl(this._self, this._then);

  final SearchData _self;
  final $Res Function(SearchData) _then;

/// Create a copy of SearchData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? query = null,Object? pageNumber = null,}) {
  return _then(_self.copyWith(
query: null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,pageNumber: null == pageNumber ? _self.pageNumber : pageNumber // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [SearchData].
extension SearchDataPatterns on SearchData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SearchData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SearchData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SearchData value)  $default,){
final _that = this;
switch (_that) {
case _SearchData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SearchData value)?  $default,){
final _that = this;
switch (_that) {
case _SearchData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String query,  int pageNumber)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SearchData() when $default != null:
return $default(_that.query,_that.pageNumber);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String query,  int pageNumber)  $default,) {final _that = this;
switch (_that) {
case _SearchData():
return $default(_that.query,_that.pageNumber);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String query,  int pageNumber)?  $default,) {final _that = this;
switch (_that) {
case _SearchData() when $default != null:
return $default(_that.query,_that.pageNumber);case _:
  return null;

}
}

}

/// @nodoc


class _SearchData implements SearchData {
  const _SearchData({required this.query, required this.pageNumber});
  

@override final  String query;
@override final  int pageNumber;

/// Create a copy of SearchData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SearchDataCopyWith<_SearchData> get copyWith => __$SearchDataCopyWithImpl<_SearchData>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SearchData&&(identical(other.query, query) || other.query == query)&&(identical(other.pageNumber, pageNumber) || other.pageNumber == pageNumber));
}


@override
int get hashCode => Object.hash(runtimeType,query,pageNumber);

@override
String toString() {
  return 'SearchData(query: $query, pageNumber: $pageNumber)';
}


}

/// @nodoc
abstract mixin class _$SearchDataCopyWith<$Res> implements $SearchDataCopyWith<$Res> {
  factory _$SearchDataCopyWith(_SearchData value, $Res Function(_SearchData) _then) = __$SearchDataCopyWithImpl;
@override @useResult
$Res call({
 String query, int pageNumber
});




}
/// @nodoc
class __$SearchDataCopyWithImpl<$Res>
    implements _$SearchDataCopyWith<$Res> {
  __$SearchDataCopyWithImpl(this._self, this._then);

  final _SearchData _self;
  final $Res Function(_SearchData) _then;

/// Create a copy of SearchData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? query = null,Object? pageNumber = null,}) {
  return _then(_SearchData(
query: null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,pageNumber: null == pageNumber ? _self.pageNumber : pageNumber // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
