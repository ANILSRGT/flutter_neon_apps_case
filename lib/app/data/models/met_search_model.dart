import 'package:freezed_annotation/freezed_annotation.dart';

part 'met_search_model.freezed.dart';
part 'met_search_model.g.dart';

@freezed
abstract class MetSearchModel with _$MetSearchModel {
  const factory MetSearchModel({int? total, List<int>? objectIDs}) =
      _MetSearchModel;

  factory MetSearchModel.fromJson(Map<String, dynamic> json) =>
      _$MetSearchModelFromJson(json);
}
