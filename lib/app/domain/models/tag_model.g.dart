// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tag_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TagModel _$TagModelFromJson(Map<String, dynamic> json) => _TagModel(
  localId: (json['localId'] as num?)?.toInt(),
  term: json['term'] as String?,
  AAT_URL: json['AAT_URL'] as String?,
  Wikidata_URL: json['Wikidata_URL'] as String?,
);

Map<String, dynamic> _$TagModelToJson(_TagModel instance) => <String, dynamic>{
  'localId': instance.localId,
  'term': instance.term,
  'AAT_URL': instance.AAT_URL,
  'Wikidata_URL': instance.Wikidata_URL,
};
