import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:neon_apps_case/app/data/models/constituent_model.dart';
import 'package:neon_apps_case/app/data/models/measurement_model.dart';
import 'package:neon_apps_case/app/data/models/tag_model.dart';

part 'met_object_model.freezed.dart';
part 'met_object_model.g.dart';

@freezed
abstract class MetObjectModel with _$MetObjectModel {
  const factory MetObjectModel({
    int? objectID,
    bool? isHighlight,
    String? accessionNumber,
    String? accessionYear,
    bool? isPublicDomain,
    String? primaryImage,
    String? primaryImageSmall,
    List<String>? additionalImages,
    List<ConstituentModel>? constituents,
    String? department,
    String? objectName,
    String? title,
    String? culture,
    String? period,
    String? dynasty,
    String? reign,
    String? portfolio,
    String? artistRole,
    String? artistPrefix,
    String? artistDisplayName,
    String? artistDisplayBio,
    String? artistSuffix,
    String? artistAlphaSort,
    String? artistNationality,
    String? artistBeginDate,
    String? artistEndDate,
    String? artistGender,
    String? artistWikidata_URL,
    String? artistULAN_URL,
    String? objectDate,
    int? objectBeginDate,
    int? objectEndDate,
    String? medium,
    String? dimensions,
    List<MeasurementModel>? measurements,
    String? creditLine,
    String? geographyType,
    String? city,
    String? state,
    String? county,
    String? country,
    String? region,
    String? subregion,
    String? locale,
    String? locus,
    String? excavation,
    String? river,
    String? classification,
    String? rightsAndReproduction,
    String? linkResource,
    String? metadataDate,
    String? repository,
    String? objectURL,
    List<TagModel>? tags,
    String? objectWikidata_URL,
    bool? isTimelineWork,
    String? GalleryNumber,
  }) = _MetObjectModel;

  factory MetObjectModel.fromJson(Map<String, dynamic> json) =>
      _$MetObjectModelFromJson(json);
}
