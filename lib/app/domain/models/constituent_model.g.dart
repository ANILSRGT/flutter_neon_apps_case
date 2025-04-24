// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'constituent_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ConstituentModel _$ConstituentModelFromJson(Map<String, dynamic> json) =>
    _ConstituentModel(
      localId: (json['localId'] as num?)?.toInt(),
      constituentID: (json['constituentID'] as num?)?.toInt(),
      role: json['role'] as String?,
      name: json['name'] as String?,
      constituentULAN_URL: json['constituentULAN_URL'] as String?,
      constituentWikidata_URL: json['constituentWikidata_URL'] as String?,
      gender: json['gender'] as String?,
    );

Map<String, dynamic> _$ConstituentModelToJson(_ConstituentModel instance) =>
    <String, dynamic>{
      'localId': instance.localId,
      'constituentID': instance.constituentID,
      'role': instance.role,
      'name': instance.name,
      'constituentULAN_URL': instance.constituentULAN_URL,
      'constituentWikidata_URL': instance.constituentWikidata_URL,
      'gender': instance.gender,
    };
