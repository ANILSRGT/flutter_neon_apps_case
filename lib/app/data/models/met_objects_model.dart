import 'package:freezed_annotation/freezed_annotation.dart';

part 'met_objects_model.freezed.dart';
part 'met_objects_model.g.dart';

@freezed
abstract class MetObjectsModel with _$MetObjectsModel {
  const factory MetObjectsModel({int? total, List<int>? objectIDs}) =
      _MetObjectsModel;

  factory MetObjectsModel.fromJson(Map<String, Object?> json) =>
      _$MetObjectsModelFromJson(json);
}
