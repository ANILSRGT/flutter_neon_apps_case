import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:neon_apps_case/app/domain/models/met_object_model.dart';
import 'package:objectbox/objectbox.dart';

part 'measurement_model.freezed.dart';
part 'measurement_model.g.dart';

@freezed
abstract class MeasurementModel with _$MeasurementModel {
  @Entity(realClass: MetObjectModel)
  const factory MeasurementModel({
    @Id(assignable: true) int? localId,
    String? elementName,
    double? width,
    double? height,
    double? depth,
    String? elementDescription,
  }) = _MeasurementModel;

  factory MeasurementModel.fromJson(Map<String, dynamic> json) =>
      _$MeasurementModelFromJson(json);
}
