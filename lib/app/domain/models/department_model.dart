import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:objectbox/objectbox.dart';

part 'department_model.freezed.dart';
part 'department_model.g.dart';

@freezed
abstract class DepartmentModel with _$DepartmentModel {
  @Entity(realClass: DepartmentModel)
  const factory DepartmentModel({
    @Id(assignable: true) int? localId,
    @Unique() int? departmentId,
    String? displayName,
  }) = _DepartmentModel;

  factory DepartmentModel.fromJson(Map<String, dynamic> json) =>
      _$DepartmentModelFromJson(json);

  static List<DepartmentModel> fromJsonList(Map<String, dynamic> json) {
    return json['departments'] != null
        ? (json['departments'] as List)
            .map((e) => DepartmentModel.fromJson(e as Map<String, dynamic>))
            .toList()
        : <DepartmentModel>[];
  }
}
