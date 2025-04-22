// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'measurement_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MeasurementModel {

 String? get elementName; double? get width; double? get height; double? get depth; String? get elementDescription;
/// Create a copy of MeasurementModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MeasurementModelCopyWith<MeasurementModel> get copyWith => _$MeasurementModelCopyWithImpl<MeasurementModel>(this as MeasurementModel, _$identity);

  /// Serializes this MeasurementModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MeasurementModel&&(identical(other.elementName, elementName) || other.elementName == elementName)&&(identical(other.width, width) || other.width == width)&&(identical(other.height, height) || other.height == height)&&(identical(other.depth, depth) || other.depth == depth)&&(identical(other.elementDescription, elementDescription) || other.elementDescription == elementDescription));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,elementName,width,height,depth,elementDescription);

@override
String toString() {
  return 'MeasurementModel(elementName: $elementName, width: $width, height: $height, depth: $depth, elementDescription: $elementDescription)';
}


}

/// @nodoc
abstract mixin class $MeasurementModelCopyWith<$Res>  {
  factory $MeasurementModelCopyWith(MeasurementModel value, $Res Function(MeasurementModel) _then) = _$MeasurementModelCopyWithImpl;
@useResult
$Res call({
 String? elementName, double? width, double? height, double? depth, String? elementDescription
});




}
/// @nodoc
class _$MeasurementModelCopyWithImpl<$Res>
    implements $MeasurementModelCopyWith<$Res> {
  _$MeasurementModelCopyWithImpl(this._self, this._then);

  final MeasurementModel _self;
  final $Res Function(MeasurementModel) _then;

/// Create a copy of MeasurementModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? elementName = freezed,Object? width = freezed,Object? height = freezed,Object? depth = freezed,Object? elementDescription = freezed,}) {
  return _then(_self.copyWith(
elementName: freezed == elementName ? _self.elementName : elementName // ignore: cast_nullable_to_non_nullable
as String?,width: freezed == width ? _self.width : width // ignore: cast_nullable_to_non_nullable
as double?,height: freezed == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as double?,depth: freezed == depth ? _self.depth : depth // ignore: cast_nullable_to_non_nullable
as double?,elementDescription: freezed == elementDescription ? _self.elementDescription : elementDescription // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _MeasurementModel implements MeasurementModel {
  const _MeasurementModel({this.elementName, this.width, this.height, this.depth, this.elementDescription});
  factory _MeasurementModel.fromJson(Map<String, dynamic> json) => _$MeasurementModelFromJson(json);

@override final  String? elementName;
@override final  double? width;
@override final  double? height;
@override final  double? depth;
@override final  String? elementDescription;

/// Create a copy of MeasurementModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MeasurementModelCopyWith<_MeasurementModel> get copyWith => __$MeasurementModelCopyWithImpl<_MeasurementModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MeasurementModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MeasurementModel&&(identical(other.elementName, elementName) || other.elementName == elementName)&&(identical(other.width, width) || other.width == width)&&(identical(other.height, height) || other.height == height)&&(identical(other.depth, depth) || other.depth == depth)&&(identical(other.elementDescription, elementDescription) || other.elementDescription == elementDescription));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,elementName,width,height,depth,elementDescription);

@override
String toString() {
  return 'MeasurementModel(elementName: $elementName, width: $width, height: $height, depth: $depth, elementDescription: $elementDescription)';
}


}

/// @nodoc
abstract mixin class _$MeasurementModelCopyWith<$Res> implements $MeasurementModelCopyWith<$Res> {
  factory _$MeasurementModelCopyWith(_MeasurementModel value, $Res Function(_MeasurementModel) _then) = __$MeasurementModelCopyWithImpl;
@override @useResult
$Res call({
 String? elementName, double? width, double? height, double? depth, String? elementDescription
});




}
/// @nodoc
class __$MeasurementModelCopyWithImpl<$Res>
    implements _$MeasurementModelCopyWith<$Res> {
  __$MeasurementModelCopyWithImpl(this._self, this._then);

  final _MeasurementModel _self;
  final $Res Function(_MeasurementModel) _then;

/// Create a copy of MeasurementModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? elementName = freezed,Object? width = freezed,Object? height = freezed,Object? depth = freezed,Object? elementDescription = freezed,}) {
  return _then(_MeasurementModel(
elementName: freezed == elementName ? _self.elementName : elementName // ignore: cast_nullable_to_non_nullable
as String?,width: freezed == width ? _self.width : width // ignore: cast_nullable_to_non_nullable
as double?,height: freezed == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as double?,depth: freezed == depth ? _self.depth : depth // ignore: cast_nullable_to_non_nullable
as double?,elementDescription: freezed == elementDescription ? _self.elementDescription : elementDescription // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
