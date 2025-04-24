import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:objectbox/objectbox.dart';

part 'met_objects_model.freezed.dart';
part 'met_objects_model.g.dart';

@freezed
abstract class MetObjectsModel with _$MetObjectsModel {
  @Entity(realClass: MetObjectsModel)
  const factory MetObjectsModel({
    @Id(assignable: true) int? localId,
    int? total,
    List<int>? objectIDs,
  }) = _MetObjectsModel;

  factory MetObjectsModel.fromJson(Map<String, Object?> json) =>
      _$MetObjectsModelFromJson(json);
}
