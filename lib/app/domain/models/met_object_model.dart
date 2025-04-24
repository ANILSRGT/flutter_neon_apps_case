import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:neon_apps_case/app/domain/models/constituent_model.dart';
import 'package:neon_apps_case/app/domain/models/measurement_model.dart';
import 'package:neon_apps_case/app/domain/models/tag_model.dart';
import 'package:objectbox/objectbox.dart';

part 'met_object_model.freezed.dart';
part 'met_object_model.g.dart';

@freezed
abstract class MetObjectModel with _$MetObjectModel {
  @Entity(realClass: MetObjectModel)
  const factory MetObjectModel({
    @Id(assignable: true) int? localId,
    @Unique() int? objectID,
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
