// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'measurement_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MeasurementModel _$MeasurementModelFromJson(Map<String, dynamic> json) =>
    _MeasurementModel(
      localId: (json['localId'] as num?)?.toInt(),
      elementName: json['elementName'] as String?,
      width: (json['width'] as num?)?.toDouble(),
      height: (json['height'] as num?)?.toDouble(),
      depth: (json['depth'] as num?)?.toDouble(),
      elementDescription: json['elementDescription'] as String?,
    );

Map<String, dynamic> _$MeasurementModelToJson(_MeasurementModel instance) =>
    <String, dynamic>{
      'localId': instance.localId,
      'elementName': instance.elementName,
      'width': instance.width,
      'height': instance.height,
      'depth': instance.depth,
      'elementDescription': instance.elementDescription,
    };
