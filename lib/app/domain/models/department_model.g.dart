// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'department_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DepartmentModel _$DepartmentModelFromJson(Map<String, dynamic> json) =>
    _DepartmentModel(
      localId: (json['localId'] as num?)?.toInt(),
      departmentId: (json['departmentId'] as num?)?.toInt(),
      displayName: json['displayName'] as String?,
    );

Map<String, dynamic> _$DepartmentModelToJson(_DepartmentModel instance) =>
    <String, dynamic>{
      'localId': instance.localId,
      'departmentId': instance.departmentId,
      'displayName': instance.displayName,
    };
