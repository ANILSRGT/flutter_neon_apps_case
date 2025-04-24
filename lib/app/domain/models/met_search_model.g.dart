// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'met_search_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MetSearchModel _$MetSearchModelFromJson(Map<String, dynamic> json) =>
    _MetSearchModel(
      localId: (json['localId'] as num?)?.toInt(),
      total: (json['total'] as num?)?.toInt(),
      objectIDs:
          (json['objectIDs'] as List<dynamic>?)
              ?.map((e) => (e as num).toInt())
              .toList(),
    );

Map<String, dynamic> _$MetSearchModelToJson(_MetSearchModel instance) =>
    <String, dynamic>{
      'localId': instance.localId,
      'total': instance.total,
      'objectIDs': instance.objectIDs,
    };
