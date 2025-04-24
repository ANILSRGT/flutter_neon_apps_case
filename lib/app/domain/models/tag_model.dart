import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:objectbox/objectbox.dart';

part 'tag_model.freezed.dart';
part 'tag_model.g.dart';

@freezed
abstract class TagModel with _$TagModel {
  @Entity(realClass: TagModel)
  const factory TagModel({
    @Id(assignable: true) int? localId,
    String? term,
    String? AAT_URL,
    String? Wikidata_URL,
  }) = _TagModel;

  factory TagModel.fromJson(Map<String, dynamic> json) =>
      _$TagModelFromJson(json);
}
