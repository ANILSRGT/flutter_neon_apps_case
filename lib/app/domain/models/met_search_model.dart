import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:objectbox/objectbox.dart';

part 'met_search_model.freezed.dart';
part 'met_search_model.g.dart';

@freezed
abstract class MetSearchModel with _$MetSearchModel {
  @Entity(realClass: MetSearchModel)
  const factory MetSearchModel({
    @Id(assignable: true) int? localId,
    int? total,
    List<int>? objectIDs,
  }) = _MetSearchModel;

  factory MetSearchModel.fromJson(Map<String, dynamic> json) =>
      _$MetSearchModelFromJson(json);
}
