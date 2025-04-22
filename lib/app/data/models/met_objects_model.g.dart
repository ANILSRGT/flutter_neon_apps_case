// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'met_objects_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MetObjectsModel _$MetObjectsModelFromJson(Map<String, dynamic> json) =>
    _MetObjectsModel(
      total: (json['total'] as num?)?.toInt(),
      objectIDs:
          (json['objectIDs'] as List<dynamic>?)
              ?.map((e) => (e as num).toInt())
              .toList(),
    );

Map<String, dynamic> _$MetObjectsModelToJson(_MetObjectsModel instance) =>
    <String, dynamic>{'total': instance.total, 'objectIDs': instance.objectIDs};
