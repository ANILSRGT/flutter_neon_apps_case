import 'package:freezed_annotation/freezed_annotation.dart';

part 'measurement_model.freezed.dart';
part 'measurement_model.g.dart';

@freezed
abstract class MeasurementModel with _$MeasurementModel {
  const factory MeasurementModel({
    String? elementName,
    double? width,
    double? height,
    double? depth,
    String? elementDescription,
  }) = _MeasurementModel;

  factory MeasurementModel.fromJson(Map<String, dynamic> json) =>
      _$MeasurementModelFromJson(json);
}
