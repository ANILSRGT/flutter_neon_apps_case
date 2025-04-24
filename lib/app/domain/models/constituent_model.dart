import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:objectbox/objectbox.dart';

part 'constituent_model.freezed.dart';
part 'constituent_model.g.dart';

@freezed
abstract class ConstituentModel with _$ConstituentModel {
  @Entity(realClass: ConstituentModel)
  const factory ConstituentModel({
    @Id(assignable: true) int? localId,
    @Unique() int? constituentID,
    String? role,
    String? name,
    String? constituentULAN_URL,
    String? constituentWikidata_URL,
    String? gender,
  }) = _ConstituentModel;

  factory ConstituentModel.fromJson(Map<String, dynamic> json) =>
      _$ConstituentModelFromJson(json);
}
