// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'constituent_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ConstituentModel {

@Id(assignable: true) int? get localId;@Unique() int? get constituentID; String? get role; String? get name; String? get constituentULAN_URL; String? get constituentWikidata_URL; String? get gender;
/// Create a copy of ConstituentModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ConstituentModelCopyWith<ConstituentModel> get copyWith => _$ConstituentModelCopyWithImpl<ConstituentModel>(this as ConstituentModel, _$identity);

  /// Serializes this ConstituentModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ConstituentModel&&(identical(other.localId, localId) || other.localId == localId)&&(identical(other.constituentID, constituentID) || other.constituentID == constituentID)&&(identical(other.role, role) || other.role == role)&&(identical(other.name, name) || other.name == name)&&(identical(other.constituentULAN_URL, constituentULAN_URL) || other.constituentULAN_URL == constituentULAN_URL)&&(identical(other.constituentWikidata_URL, constituentWikidata_URL) || other.constituentWikidata_URL == constituentWikidata_URL)&&(identical(other.gender, gender) || other.gender == gender));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,localId,constituentID,role,name,constituentULAN_URL,constituentWikidata_URL,gender);

@override
String toString() {
  return 'ConstituentModel(localId: $localId, constituentID: $constituentID, role: $role, name: $name, constituentULAN_URL: $constituentULAN_URL, constituentWikidata_URL: $constituentWikidata_URL, gender: $gender)';
}


}

/// @nodoc
abstract mixin class $ConstituentModelCopyWith<$Res>  {
  factory $ConstituentModelCopyWith(ConstituentModel value, $Res Function(ConstituentModel) _then) = _$ConstituentModelCopyWithImpl;
@useResult
$Res call({
@Id(assignable: true) int? localId,@Unique() int? constituentID, String? role, String? name, String? constituentULAN_URL, String? constituentWikidata_URL, String? gender
});




}
/// @nodoc
class _$ConstituentModelCopyWithImpl<$Res>
    implements $ConstituentModelCopyWith<$Res> {
  _$ConstituentModelCopyWithImpl(this._self, this._then);

  final ConstituentModel _self;
  final $Res Function(ConstituentModel) _then;

/// Create a copy of ConstituentModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? localId = freezed,Object? constituentID = freezed,Object? role = freezed,Object? name = freezed,Object? constituentULAN_URL = freezed,Object? constituentWikidata_URL = freezed,Object? gender = freezed,}) {
  return _then(_self.copyWith(
localId: freezed == localId ? _self.localId : localId // ignore: cast_nullable_to_non_nullable
as int?,constituentID: freezed == constituentID ? _self.constituentID : constituentID // ignore: cast_nullable_to_non_nullable
as int?,role: freezed == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,constituentULAN_URL: freezed == constituentULAN_URL ? _self.constituentULAN_URL : constituentULAN_URL // ignore: cast_nullable_to_non_nullable
as String?,constituentWikidata_URL: freezed == constituentWikidata_URL ? _self.constituentWikidata_URL : constituentWikidata_URL // ignore: cast_nullable_to_non_nullable
as String?,gender: freezed == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc
@JsonSerializable()
@Entity(realClass: ConstituentModel)
class _ConstituentModel implements ConstituentModel {
  const _ConstituentModel({@Id(assignable: true) this.localId, @Unique() this.constituentID, this.role, this.name, this.constituentULAN_URL, this.constituentWikidata_URL, this.gender});
  factory _ConstituentModel.fromJson(Map<String, dynamic> json) => _$ConstituentModelFromJson(json);

@override@Id(assignable: true) final  int? localId;
@override@Unique() final  int? constituentID;
@override final  String? role;
@override final  String? name;
@override final  String? constituentULAN_URL;
@override final  String? constituentWikidata_URL;
@override final  String? gender;

/// Create a copy of ConstituentModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ConstituentModelCopyWith<_ConstituentModel> get copyWith => __$ConstituentModelCopyWithImpl<_ConstituentModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ConstituentModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ConstituentModel&&(identical(other.localId, localId) || other.localId == localId)&&(identical(other.constituentID, constituentID) || other.constituentID == constituentID)&&(identical(other.role, role) || other.role == role)&&(identical(other.name, name) || other.name == name)&&(identical(other.constituentULAN_URL, constituentULAN_URL) || other.constituentULAN_URL == constituentULAN_URL)&&(identical(other.constituentWikidata_URL, constituentWikidata_URL) || other.constituentWikidata_URL == constituentWikidata_URL)&&(identical(other.gender, gender) || other.gender == gender));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,localId,constituentID,role,name,constituentULAN_URL,constituentWikidata_URL,gender);

@override
String toString() {
  return 'ConstituentModel(localId: $localId, constituentID: $constituentID, role: $role, name: $name, constituentULAN_URL: $constituentULAN_URL, constituentWikidata_URL: $constituentWikidata_URL, gender: $gender)';
}


}

/// @nodoc
abstract mixin class _$ConstituentModelCopyWith<$Res> implements $ConstituentModelCopyWith<$Res> {
  factory _$ConstituentModelCopyWith(_ConstituentModel value, $Res Function(_ConstituentModel) _then) = __$ConstituentModelCopyWithImpl;
@override @useResult
$Res call({
@Id(assignable: true) int? localId,@Unique() int? constituentID, String? role, String? name, String? constituentULAN_URL, String? constituentWikidata_URL, String? gender
});




}
/// @nodoc
class __$ConstituentModelCopyWithImpl<$Res>
    implements _$ConstituentModelCopyWith<$Res> {
  __$ConstituentModelCopyWithImpl(this._self, this._then);

  final _ConstituentModel _self;
  final $Res Function(_ConstituentModel) _then;

/// Create a copy of ConstituentModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? localId = freezed,Object? constituentID = freezed,Object? role = freezed,Object? name = freezed,Object? constituentULAN_URL = freezed,Object? constituentWikidata_URL = freezed,Object? gender = freezed,}) {
  return _then(_ConstituentModel(
localId: freezed == localId ? _self.localId : localId // ignore: cast_nullable_to_non_nullable
as int?,constituentID: freezed == constituentID ? _self.constituentID : constituentID // ignore: cast_nullable_to_non_nullable
as int?,role: freezed == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,constituentULAN_URL: freezed == constituentULAN_URL ? _self.constituentULAN_URL : constituentULAN_URL // ignore: cast_nullable_to_non_nullable
as String?,constituentWikidata_URL: freezed == constituentWikidata_URL ? _self.constituentWikidata_URL : constituentWikidata_URL // ignore: cast_nullable_to_non_nullable
as String?,gender: freezed == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
