// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'met_objects_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MetObjectsModel {

 int? get total; List<int>? get objectIDs;
/// Create a copy of MetObjectsModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MetObjectsModelCopyWith<MetObjectsModel> get copyWith => _$MetObjectsModelCopyWithImpl<MetObjectsModel>(this as MetObjectsModel, _$identity);

  /// Serializes this MetObjectsModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MetObjectsModel&&(identical(other.total, total) || other.total == total)&&const DeepCollectionEquality().equals(other.objectIDs, objectIDs));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,total,const DeepCollectionEquality().hash(objectIDs));

@override
String toString() {
  return 'MetObjectsModel(total: $total, objectIDs: $objectIDs)';
}


}

/// @nodoc
abstract mixin class $MetObjectsModelCopyWith<$Res>  {
  factory $MetObjectsModelCopyWith(MetObjectsModel value, $Res Function(MetObjectsModel) _then) = _$MetObjectsModelCopyWithImpl;
@useResult
$Res call({
 int? total, List<int>? objectIDs
});




}
/// @nodoc
class _$MetObjectsModelCopyWithImpl<$Res>
    implements $MetObjectsModelCopyWith<$Res> {
  _$MetObjectsModelCopyWithImpl(this._self, this._then);

  final MetObjectsModel _self;
  final $Res Function(MetObjectsModel) _then;

/// Create a copy of MetObjectsModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? total = freezed,Object? objectIDs = freezed,}) {
  return _then(_self.copyWith(
total: freezed == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int?,objectIDs: freezed == objectIDs ? _self.objectIDs : objectIDs // ignore: cast_nullable_to_non_nullable
as List<int>?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _MetObjectsModel implements MetObjectsModel {
  const _MetObjectsModel({this.total, final  List<int>? objectIDs}): _objectIDs = objectIDs;
  factory _MetObjectsModel.fromJson(Map<String, dynamic> json) => _$MetObjectsModelFromJson(json);

@override final  int? total;
 final  List<int>? _objectIDs;
@override List<int>? get objectIDs {
  final value = _objectIDs;
  if (value == null) return null;
  if (_objectIDs is EqualUnmodifiableListView) return _objectIDs;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of MetObjectsModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MetObjectsModelCopyWith<_MetObjectsModel> get copyWith => __$MetObjectsModelCopyWithImpl<_MetObjectsModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MetObjectsModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MetObjectsModel&&(identical(other.total, total) || other.total == total)&&const DeepCollectionEquality().equals(other._objectIDs, _objectIDs));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,total,const DeepCollectionEquality().hash(_objectIDs));

@override
String toString() {
  return 'MetObjectsModel(total: $total, objectIDs: $objectIDs)';
}


}

/// @nodoc
abstract mixin class _$MetObjectsModelCopyWith<$Res> implements $MetObjectsModelCopyWith<$Res> {
  factory _$MetObjectsModelCopyWith(_MetObjectsModel value, $Res Function(_MetObjectsModel) _then) = __$MetObjectsModelCopyWithImpl;
@override @useResult
$Res call({
 int? total, List<int>? objectIDs
});




}
/// @nodoc
class __$MetObjectsModelCopyWithImpl<$Res>
    implements _$MetObjectsModelCopyWith<$Res> {
  __$MetObjectsModelCopyWithImpl(this._self, this._then);

  final _MetObjectsModel _self;
  final $Res Function(_MetObjectsModel) _then;

/// Create a copy of MetObjectsModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? total = freezed,Object? objectIDs = freezed,}) {
  return _then(_MetObjectsModel(
total: freezed == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int?,objectIDs: freezed == objectIDs ? _self._objectIDs : objectIDs // ignore: cast_nullable_to_non_nullable
as List<int>?,
  ));
}


}

// dart format on
