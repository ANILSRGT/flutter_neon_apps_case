// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'met_search_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MetSearchModel {

@Id(assignable: true) int? get localId; int? get total; List<int>? get objectIDs;
/// Create a copy of MetSearchModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MetSearchModelCopyWith<MetSearchModel> get copyWith => _$MetSearchModelCopyWithImpl<MetSearchModel>(this as MetSearchModel, _$identity);

  /// Serializes this MetSearchModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MetSearchModel&&(identical(other.localId, localId) || other.localId == localId)&&(identical(other.total, total) || other.total == total)&&const DeepCollectionEquality().equals(other.objectIDs, objectIDs));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,localId,total,const DeepCollectionEquality().hash(objectIDs));

@override
String toString() {
  return 'MetSearchModel(localId: $localId, total: $total, objectIDs: $objectIDs)';
}


}

/// @nodoc
abstract mixin class $MetSearchModelCopyWith<$Res>  {
  factory $MetSearchModelCopyWith(MetSearchModel value, $Res Function(MetSearchModel) _then) = _$MetSearchModelCopyWithImpl;
@useResult
$Res call({
@Id(assignable: true) int? localId, int? total, List<int>? objectIDs
});




}
/// @nodoc
class _$MetSearchModelCopyWithImpl<$Res>
    implements $MetSearchModelCopyWith<$Res> {
  _$MetSearchModelCopyWithImpl(this._self, this._then);

  final MetSearchModel _self;
  final $Res Function(MetSearchModel) _then;

/// Create a copy of MetSearchModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? localId = freezed,Object? total = freezed,Object? objectIDs = freezed,}) {
  return _then(_self.copyWith(
localId: freezed == localId ? _self.localId : localId // ignore: cast_nullable_to_non_nullable
as int?,total: freezed == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int?,objectIDs: freezed == objectIDs ? _self.objectIDs : objectIDs // ignore: cast_nullable_to_non_nullable
as List<int>?,
  ));
}

}


/// @nodoc
@JsonSerializable()
@Entity(realClass: MetSearchModel)
class _MetSearchModel implements MetSearchModel {
  const _MetSearchModel({@Id(assignable: true) this.localId, this.total, final  List<int>? objectIDs}): _objectIDs = objectIDs;
  factory _MetSearchModel.fromJson(Map<String, dynamic> json) => _$MetSearchModelFromJson(json);

@override@Id(assignable: true) final  int? localId;
@override final  int? total;
 final  List<int>? _objectIDs;
@override List<int>? get objectIDs {
  final value = _objectIDs;
  if (value == null) return null;
  if (_objectIDs is EqualUnmodifiableListView) return _objectIDs;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of MetSearchModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MetSearchModelCopyWith<_MetSearchModel> get copyWith => __$MetSearchModelCopyWithImpl<_MetSearchModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MetSearchModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MetSearchModel&&(identical(other.localId, localId) || other.localId == localId)&&(identical(other.total, total) || other.total == total)&&const DeepCollectionEquality().equals(other._objectIDs, _objectIDs));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,localId,total,const DeepCollectionEquality().hash(_objectIDs));

@override
String toString() {
  return 'MetSearchModel(localId: $localId, total: $total, objectIDs: $objectIDs)';
}


}

/// @nodoc
abstract mixin class _$MetSearchModelCopyWith<$Res> implements $MetSearchModelCopyWith<$Res> {
  factory _$MetSearchModelCopyWith(_MetSearchModel value, $Res Function(_MetSearchModel) _then) = __$MetSearchModelCopyWithImpl;
@override @useResult
$Res call({
@Id(assignable: true) int? localId, int? total, List<int>? objectIDs
});




}
/// @nodoc
class __$MetSearchModelCopyWithImpl<$Res>
    implements _$MetSearchModelCopyWith<$Res> {
  __$MetSearchModelCopyWithImpl(this._self, this._then);

  final _MetSearchModel _self;
  final $Res Function(_MetSearchModel) _then;

/// Create a copy of MetSearchModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? localId = freezed,Object? total = freezed,Object? objectIDs = freezed,}) {
  return _then(_MetSearchModel(
localId: freezed == localId ? _self.localId : localId // ignore: cast_nullable_to_non_nullable
as int?,total: freezed == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int?,objectIDs: freezed == objectIDs ? _self._objectIDs : objectIDs // ignore: cast_nullable_to_non_nullable
as List<int>?,
  ));
}


}

// dart format on
