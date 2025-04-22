// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tag_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TagModel {

 String? get term; String? get AAT_URL; String? get Wikidata_URL;
/// Create a copy of TagModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TagModelCopyWith<TagModel> get copyWith => _$TagModelCopyWithImpl<TagModel>(this as TagModel, _$identity);

  /// Serializes this TagModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TagModel&&(identical(other.term, term) || other.term == term)&&(identical(other.AAT_URL, AAT_URL) || other.AAT_URL == AAT_URL)&&(identical(other.Wikidata_URL, Wikidata_URL) || other.Wikidata_URL == Wikidata_URL));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,term,AAT_URL,Wikidata_URL);

@override
String toString() {
  return 'TagModel(term: $term, AAT_URL: $AAT_URL, Wikidata_URL: $Wikidata_URL)';
}


}

/// @nodoc
abstract mixin class $TagModelCopyWith<$Res>  {
  factory $TagModelCopyWith(TagModel value, $Res Function(TagModel) _then) = _$TagModelCopyWithImpl;
@useResult
$Res call({
 String? term, String? AAT_URL, String? Wikidata_URL
});




}
/// @nodoc
class _$TagModelCopyWithImpl<$Res>
    implements $TagModelCopyWith<$Res> {
  _$TagModelCopyWithImpl(this._self, this._then);

  final TagModel _self;
  final $Res Function(TagModel) _then;

/// Create a copy of TagModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? term = freezed,Object? AAT_URL = freezed,Object? Wikidata_URL = freezed,}) {
  return _then(_self.copyWith(
term: freezed == term ? _self.term : term // ignore: cast_nullable_to_non_nullable
as String?,AAT_URL: freezed == AAT_URL ? _self.AAT_URL : AAT_URL // ignore: cast_nullable_to_non_nullable
as String?,Wikidata_URL: freezed == Wikidata_URL ? _self.Wikidata_URL : Wikidata_URL // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _TagModel implements TagModel {
  const _TagModel({this.term, this.AAT_URL, this.Wikidata_URL});
  factory _TagModel.fromJson(Map<String, dynamic> json) => _$TagModelFromJson(json);

@override final  String? term;
@override final  String? AAT_URL;
@override final  String? Wikidata_URL;

/// Create a copy of TagModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TagModelCopyWith<_TagModel> get copyWith => __$TagModelCopyWithImpl<_TagModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TagModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TagModel&&(identical(other.term, term) || other.term == term)&&(identical(other.AAT_URL, AAT_URL) || other.AAT_URL == AAT_URL)&&(identical(other.Wikidata_URL, Wikidata_URL) || other.Wikidata_URL == Wikidata_URL));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,term,AAT_URL,Wikidata_URL);

@override
String toString() {
  return 'TagModel(term: $term, AAT_URL: $AAT_URL, Wikidata_URL: $Wikidata_URL)';
}


}

/// @nodoc
abstract mixin class _$TagModelCopyWith<$Res> implements $TagModelCopyWith<$Res> {
  factory _$TagModelCopyWith(_TagModel value, $Res Function(_TagModel) _then) = __$TagModelCopyWithImpl;
@override @useResult
$Res call({
 String? term, String? AAT_URL, String? Wikidata_URL
});




}
/// @nodoc
class __$TagModelCopyWithImpl<$Res>
    implements _$TagModelCopyWith<$Res> {
  __$TagModelCopyWithImpl(this._self, this._then);

  final _TagModel _self;
  final $Res Function(_TagModel) _then;

/// Create a copy of TagModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? term = freezed,Object? AAT_URL = freezed,Object? Wikidata_URL = freezed,}) {
  return _then(_TagModel(
term: freezed == term ? _self.term : term // ignore: cast_nullable_to_non_nullable
as String?,AAT_URL: freezed == AAT_URL ? _self.AAT_URL : AAT_URL // ignore: cast_nullable_to_non_nullable
as String?,Wikidata_URL: freezed == Wikidata_URL ? _self.Wikidata_URL : Wikidata_URL // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
