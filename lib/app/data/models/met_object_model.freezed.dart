// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'met_object_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MetObjectModel {

 int? get objectID; bool? get isHighlight; String? get accessionNumber; String? get accessionYear; bool? get isPublicDomain; String? get primaryImage; String? get primaryImageSmall; List<String>? get additionalImages; List<ConstituentModel>? get constituents; String? get department; String? get objectName; String? get title; String? get culture; String? get period; String? get dynasty; String? get reign; String? get portfolio; String? get artistRole; String? get artistPrefix; String? get artistDisplayName; String? get artistDisplayBio; String? get artistSuffix; String? get artistAlphaSort; String? get artistNationality; String? get artistBeginDate; String? get artistEndDate; String? get artistGender; String? get artistWikidata_URL; String? get artistULAN_URL; String? get objectDate; int? get objectBeginDate; int? get objectEndDate; String? get medium; String? get dimensions; List<MeasurementModel>? get measurements; String? get creditLine; String? get geographyType; String? get city; String? get state; String? get county; String? get country; String? get region; String? get subregion; String? get locale; String? get locus; String? get excavation; String? get river; String? get classification; String? get rightsAndReproduction; String? get linkResource; String? get metadataDate; String? get repository; String? get objectURL; List<TagModel>? get tags; String? get objectWikidata_URL; bool? get isTimelineWork; String? get GalleryNumber;
/// Create a copy of MetObjectModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MetObjectModelCopyWith<MetObjectModel> get copyWith => _$MetObjectModelCopyWithImpl<MetObjectModel>(this as MetObjectModel, _$identity);

  /// Serializes this MetObjectModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MetObjectModel&&(identical(other.objectID, objectID) || other.objectID == objectID)&&(identical(other.isHighlight, isHighlight) || other.isHighlight == isHighlight)&&(identical(other.accessionNumber, accessionNumber) || other.accessionNumber == accessionNumber)&&(identical(other.accessionYear, accessionYear) || other.accessionYear == accessionYear)&&(identical(other.isPublicDomain, isPublicDomain) || other.isPublicDomain == isPublicDomain)&&(identical(other.primaryImage, primaryImage) || other.primaryImage == primaryImage)&&(identical(other.primaryImageSmall, primaryImageSmall) || other.primaryImageSmall == primaryImageSmall)&&const DeepCollectionEquality().equals(other.additionalImages, additionalImages)&&const DeepCollectionEquality().equals(other.constituents, constituents)&&(identical(other.department, department) || other.department == department)&&(identical(other.objectName, objectName) || other.objectName == objectName)&&(identical(other.title, title) || other.title == title)&&(identical(other.culture, culture) || other.culture == culture)&&(identical(other.period, period) || other.period == period)&&(identical(other.dynasty, dynasty) || other.dynasty == dynasty)&&(identical(other.reign, reign) || other.reign == reign)&&(identical(other.portfolio, portfolio) || other.portfolio == portfolio)&&(identical(other.artistRole, artistRole) || other.artistRole == artistRole)&&(identical(other.artistPrefix, artistPrefix) || other.artistPrefix == artistPrefix)&&(identical(other.artistDisplayName, artistDisplayName) || other.artistDisplayName == artistDisplayName)&&(identical(other.artistDisplayBio, artistDisplayBio) || other.artistDisplayBio == artistDisplayBio)&&(identical(other.artistSuffix, artistSuffix) || other.artistSuffix == artistSuffix)&&(identical(other.artistAlphaSort, artistAlphaSort) || other.artistAlphaSort == artistAlphaSort)&&(identical(other.artistNationality, artistNationality) || other.artistNationality == artistNationality)&&(identical(other.artistBeginDate, artistBeginDate) || other.artistBeginDate == artistBeginDate)&&(identical(other.artistEndDate, artistEndDate) || other.artistEndDate == artistEndDate)&&(identical(other.artistGender, artistGender) || other.artistGender == artistGender)&&(identical(other.artistWikidata_URL, artistWikidata_URL) || other.artistWikidata_URL == artistWikidata_URL)&&(identical(other.artistULAN_URL, artistULAN_URL) || other.artistULAN_URL == artistULAN_URL)&&(identical(other.objectDate, objectDate) || other.objectDate == objectDate)&&(identical(other.objectBeginDate, objectBeginDate) || other.objectBeginDate == objectBeginDate)&&(identical(other.objectEndDate, objectEndDate) || other.objectEndDate == objectEndDate)&&(identical(other.medium, medium) || other.medium == medium)&&(identical(other.dimensions, dimensions) || other.dimensions == dimensions)&&const DeepCollectionEquality().equals(other.measurements, measurements)&&(identical(other.creditLine, creditLine) || other.creditLine == creditLine)&&(identical(other.geographyType, geographyType) || other.geographyType == geographyType)&&(identical(other.city, city) || other.city == city)&&(identical(other.state, state) || other.state == state)&&(identical(other.county, county) || other.county == county)&&(identical(other.country, country) || other.country == country)&&(identical(other.region, region) || other.region == region)&&(identical(other.subregion, subregion) || other.subregion == subregion)&&(identical(other.locale, locale) || other.locale == locale)&&(identical(other.locus, locus) || other.locus == locus)&&(identical(other.excavation, excavation) || other.excavation == excavation)&&(identical(other.river, river) || other.river == river)&&(identical(other.classification, classification) || other.classification == classification)&&(identical(other.rightsAndReproduction, rightsAndReproduction) || other.rightsAndReproduction == rightsAndReproduction)&&(identical(other.linkResource, linkResource) || other.linkResource == linkResource)&&(identical(other.metadataDate, metadataDate) || other.metadataDate == metadataDate)&&(identical(other.repository, repository) || other.repository == repository)&&(identical(other.objectURL, objectURL) || other.objectURL == objectURL)&&const DeepCollectionEquality().equals(other.tags, tags)&&(identical(other.objectWikidata_URL, objectWikidata_URL) || other.objectWikidata_URL == objectWikidata_URL)&&(identical(other.isTimelineWork, isTimelineWork) || other.isTimelineWork == isTimelineWork)&&(identical(other.GalleryNumber, GalleryNumber) || other.GalleryNumber == GalleryNumber));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,objectID,isHighlight,accessionNumber,accessionYear,isPublicDomain,primaryImage,primaryImageSmall,const DeepCollectionEquality().hash(additionalImages),const DeepCollectionEquality().hash(constituents),department,objectName,title,culture,period,dynasty,reign,portfolio,artistRole,artistPrefix,artistDisplayName,artistDisplayBio,artistSuffix,artistAlphaSort,artistNationality,artistBeginDate,artistEndDate,artistGender,artistWikidata_URL,artistULAN_URL,objectDate,objectBeginDate,objectEndDate,medium,dimensions,const DeepCollectionEquality().hash(measurements),creditLine,geographyType,city,state,county,country,region,subregion,locale,locus,excavation,river,classification,rightsAndReproduction,linkResource,metadataDate,repository,objectURL,const DeepCollectionEquality().hash(tags),objectWikidata_URL,isTimelineWork,GalleryNumber]);

@override
String toString() {
  return 'MetObjectModel(objectID: $objectID, isHighlight: $isHighlight, accessionNumber: $accessionNumber, accessionYear: $accessionYear, isPublicDomain: $isPublicDomain, primaryImage: $primaryImage, primaryImageSmall: $primaryImageSmall, additionalImages: $additionalImages, constituents: $constituents, department: $department, objectName: $objectName, title: $title, culture: $culture, period: $period, dynasty: $dynasty, reign: $reign, portfolio: $portfolio, artistRole: $artistRole, artistPrefix: $artistPrefix, artistDisplayName: $artistDisplayName, artistDisplayBio: $artistDisplayBio, artistSuffix: $artistSuffix, artistAlphaSort: $artistAlphaSort, artistNationality: $artistNationality, artistBeginDate: $artistBeginDate, artistEndDate: $artistEndDate, artistGender: $artistGender, artistWikidata_URL: $artistWikidata_URL, artistULAN_URL: $artistULAN_URL, objectDate: $objectDate, objectBeginDate: $objectBeginDate, objectEndDate: $objectEndDate, medium: $medium, dimensions: $dimensions, measurements: $measurements, creditLine: $creditLine, geographyType: $geographyType, city: $city, state: $state, county: $county, country: $country, region: $region, subregion: $subregion, locale: $locale, locus: $locus, excavation: $excavation, river: $river, classification: $classification, rightsAndReproduction: $rightsAndReproduction, linkResource: $linkResource, metadataDate: $metadataDate, repository: $repository, objectURL: $objectURL, tags: $tags, objectWikidata_URL: $objectWikidata_URL, isTimelineWork: $isTimelineWork, GalleryNumber: $GalleryNumber)';
}


}

/// @nodoc
abstract mixin class $MetObjectModelCopyWith<$Res>  {
  factory $MetObjectModelCopyWith(MetObjectModel value, $Res Function(MetObjectModel) _then) = _$MetObjectModelCopyWithImpl;
@useResult
$Res call({
 int? objectID, bool? isHighlight, String? accessionNumber, String? accessionYear, bool? isPublicDomain, String? primaryImage, String? primaryImageSmall, List<String>? additionalImages, List<ConstituentModel>? constituents, String? department, String? objectName, String? title, String? culture, String? period, String? dynasty, String? reign, String? portfolio, String? artistRole, String? artistPrefix, String? artistDisplayName, String? artistDisplayBio, String? artistSuffix, String? artistAlphaSort, String? artistNationality, String? artistBeginDate, String? artistEndDate, String? artistGender, String? artistWikidata_URL, String? artistULAN_URL, String? objectDate, int? objectBeginDate, int? objectEndDate, String? medium, String? dimensions, List<MeasurementModel>? measurements, String? creditLine, String? geographyType, String? city, String? state, String? county, String? country, String? region, String? subregion, String? locale, String? locus, String? excavation, String? river, String? classification, String? rightsAndReproduction, String? linkResource, String? metadataDate, String? repository, String? objectURL, List<TagModel>? tags, String? objectWikidata_URL, bool? isTimelineWork, String? GalleryNumber
});




}
/// @nodoc
class _$MetObjectModelCopyWithImpl<$Res>
    implements $MetObjectModelCopyWith<$Res> {
  _$MetObjectModelCopyWithImpl(this._self, this._then);

  final MetObjectModel _self;
  final $Res Function(MetObjectModel) _then;

/// Create a copy of MetObjectModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? objectID = freezed,Object? isHighlight = freezed,Object? accessionNumber = freezed,Object? accessionYear = freezed,Object? isPublicDomain = freezed,Object? primaryImage = freezed,Object? primaryImageSmall = freezed,Object? additionalImages = freezed,Object? constituents = freezed,Object? department = freezed,Object? objectName = freezed,Object? title = freezed,Object? culture = freezed,Object? period = freezed,Object? dynasty = freezed,Object? reign = freezed,Object? portfolio = freezed,Object? artistRole = freezed,Object? artistPrefix = freezed,Object? artistDisplayName = freezed,Object? artistDisplayBio = freezed,Object? artistSuffix = freezed,Object? artistAlphaSort = freezed,Object? artistNationality = freezed,Object? artistBeginDate = freezed,Object? artistEndDate = freezed,Object? artistGender = freezed,Object? artistWikidata_URL = freezed,Object? artistULAN_URL = freezed,Object? objectDate = freezed,Object? objectBeginDate = freezed,Object? objectEndDate = freezed,Object? medium = freezed,Object? dimensions = freezed,Object? measurements = freezed,Object? creditLine = freezed,Object? geographyType = freezed,Object? city = freezed,Object? state = freezed,Object? county = freezed,Object? country = freezed,Object? region = freezed,Object? subregion = freezed,Object? locale = freezed,Object? locus = freezed,Object? excavation = freezed,Object? river = freezed,Object? classification = freezed,Object? rightsAndReproduction = freezed,Object? linkResource = freezed,Object? metadataDate = freezed,Object? repository = freezed,Object? objectURL = freezed,Object? tags = freezed,Object? objectWikidata_URL = freezed,Object? isTimelineWork = freezed,Object? GalleryNumber = freezed,}) {
  return _then(_self.copyWith(
objectID: freezed == objectID ? _self.objectID : objectID // ignore: cast_nullable_to_non_nullable
as int?,isHighlight: freezed == isHighlight ? _self.isHighlight : isHighlight // ignore: cast_nullable_to_non_nullable
as bool?,accessionNumber: freezed == accessionNumber ? _self.accessionNumber : accessionNumber // ignore: cast_nullable_to_non_nullable
as String?,accessionYear: freezed == accessionYear ? _self.accessionYear : accessionYear // ignore: cast_nullable_to_non_nullable
as String?,isPublicDomain: freezed == isPublicDomain ? _self.isPublicDomain : isPublicDomain // ignore: cast_nullable_to_non_nullable
as bool?,primaryImage: freezed == primaryImage ? _self.primaryImage : primaryImage // ignore: cast_nullable_to_non_nullable
as String?,primaryImageSmall: freezed == primaryImageSmall ? _self.primaryImageSmall : primaryImageSmall // ignore: cast_nullable_to_non_nullable
as String?,additionalImages: freezed == additionalImages ? _self.additionalImages : additionalImages // ignore: cast_nullable_to_non_nullable
as List<String>?,constituents: freezed == constituents ? _self.constituents : constituents // ignore: cast_nullable_to_non_nullable
as List<ConstituentModel>?,department: freezed == department ? _self.department : department // ignore: cast_nullable_to_non_nullable
as String?,objectName: freezed == objectName ? _self.objectName : objectName // ignore: cast_nullable_to_non_nullable
as String?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,culture: freezed == culture ? _self.culture : culture // ignore: cast_nullable_to_non_nullable
as String?,period: freezed == period ? _self.period : period // ignore: cast_nullable_to_non_nullable
as String?,dynasty: freezed == dynasty ? _self.dynasty : dynasty // ignore: cast_nullable_to_non_nullable
as String?,reign: freezed == reign ? _self.reign : reign // ignore: cast_nullable_to_non_nullable
as String?,portfolio: freezed == portfolio ? _self.portfolio : portfolio // ignore: cast_nullable_to_non_nullable
as String?,artistRole: freezed == artistRole ? _self.artistRole : artistRole // ignore: cast_nullable_to_non_nullable
as String?,artistPrefix: freezed == artistPrefix ? _self.artistPrefix : artistPrefix // ignore: cast_nullable_to_non_nullable
as String?,artistDisplayName: freezed == artistDisplayName ? _self.artistDisplayName : artistDisplayName // ignore: cast_nullable_to_non_nullable
as String?,artistDisplayBio: freezed == artistDisplayBio ? _self.artistDisplayBio : artistDisplayBio // ignore: cast_nullable_to_non_nullable
as String?,artistSuffix: freezed == artistSuffix ? _self.artistSuffix : artistSuffix // ignore: cast_nullable_to_non_nullable
as String?,artistAlphaSort: freezed == artistAlphaSort ? _self.artistAlphaSort : artistAlphaSort // ignore: cast_nullable_to_non_nullable
as String?,artistNationality: freezed == artistNationality ? _self.artistNationality : artistNationality // ignore: cast_nullable_to_non_nullable
as String?,artistBeginDate: freezed == artistBeginDate ? _self.artistBeginDate : artistBeginDate // ignore: cast_nullable_to_non_nullable
as String?,artistEndDate: freezed == artistEndDate ? _self.artistEndDate : artistEndDate // ignore: cast_nullable_to_non_nullable
as String?,artistGender: freezed == artistGender ? _self.artistGender : artistGender // ignore: cast_nullable_to_non_nullable
as String?,artistWikidata_URL: freezed == artistWikidata_URL ? _self.artistWikidata_URL : artistWikidata_URL // ignore: cast_nullable_to_non_nullable
as String?,artistULAN_URL: freezed == artistULAN_URL ? _self.artistULAN_URL : artistULAN_URL // ignore: cast_nullable_to_non_nullable
as String?,objectDate: freezed == objectDate ? _self.objectDate : objectDate // ignore: cast_nullable_to_non_nullable
as String?,objectBeginDate: freezed == objectBeginDate ? _self.objectBeginDate : objectBeginDate // ignore: cast_nullable_to_non_nullable
as int?,objectEndDate: freezed == objectEndDate ? _self.objectEndDate : objectEndDate // ignore: cast_nullable_to_non_nullable
as int?,medium: freezed == medium ? _self.medium : medium // ignore: cast_nullable_to_non_nullable
as String?,dimensions: freezed == dimensions ? _self.dimensions : dimensions // ignore: cast_nullable_to_non_nullable
as String?,measurements: freezed == measurements ? _self.measurements : measurements // ignore: cast_nullable_to_non_nullable
as List<MeasurementModel>?,creditLine: freezed == creditLine ? _self.creditLine : creditLine // ignore: cast_nullable_to_non_nullable
as String?,geographyType: freezed == geographyType ? _self.geographyType : geographyType // ignore: cast_nullable_to_non_nullable
as String?,city: freezed == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String?,state: freezed == state ? _self.state : state // ignore: cast_nullable_to_non_nullable
as String?,county: freezed == county ? _self.county : county // ignore: cast_nullable_to_non_nullable
as String?,country: freezed == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String?,region: freezed == region ? _self.region : region // ignore: cast_nullable_to_non_nullable
as String?,subregion: freezed == subregion ? _self.subregion : subregion // ignore: cast_nullable_to_non_nullable
as String?,locale: freezed == locale ? _self.locale : locale // ignore: cast_nullable_to_non_nullable
as String?,locus: freezed == locus ? _self.locus : locus // ignore: cast_nullable_to_non_nullable
as String?,excavation: freezed == excavation ? _self.excavation : excavation // ignore: cast_nullable_to_non_nullable
as String?,river: freezed == river ? _self.river : river // ignore: cast_nullable_to_non_nullable
as String?,classification: freezed == classification ? _self.classification : classification // ignore: cast_nullable_to_non_nullable
as String?,rightsAndReproduction: freezed == rightsAndReproduction ? _self.rightsAndReproduction : rightsAndReproduction // ignore: cast_nullable_to_non_nullable
as String?,linkResource: freezed == linkResource ? _self.linkResource : linkResource // ignore: cast_nullable_to_non_nullable
as String?,metadataDate: freezed == metadataDate ? _self.metadataDate : metadataDate // ignore: cast_nullable_to_non_nullable
as String?,repository: freezed == repository ? _self.repository : repository // ignore: cast_nullable_to_non_nullable
as String?,objectURL: freezed == objectURL ? _self.objectURL : objectURL // ignore: cast_nullable_to_non_nullable
as String?,tags: freezed == tags ? _self.tags : tags // ignore: cast_nullable_to_non_nullable
as List<TagModel>?,objectWikidata_URL: freezed == objectWikidata_URL ? _self.objectWikidata_URL : objectWikidata_URL // ignore: cast_nullable_to_non_nullable
as String?,isTimelineWork: freezed == isTimelineWork ? _self.isTimelineWork : isTimelineWork // ignore: cast_nullable_to_non_nullable
as bool?,GalleryNumber: freezed == GalleryNumber ? _self.GalleryNumber : GalleryNumber // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _MetObjectModel implements MetObjectModel {
  const _MetObjectModel({this.objectID, this.isHighlight, this.accessionNumber, this.accessionYear, this.isPublicDomain, this.primaryImage, this.primaryImageSmall, final  List<String>? additionalImages, final  List<ConstituentModel>? constituents, this.department, this.objectName, this.title, this.culture, this.period, this.dynasty, this.reign, this.portfolio, this.artistRole, this.artistPrefix, this.artistDisplayName, this.artistDisplayBio, this.artistSuffix, this.artistAlphaSort, this.artistNationality, this.artistBeginDate, this.artistEndDate, this.artistGender, this.artistWikidata_URL, this.artistULAN_URL, this.objectDate, this.objectBeginDate, this.objectEndDate, this.medium, this.dimensions, final  List<MeasurementModel>? measurements, this.creditLine, this.geographyType, this.city, this.state, this.county, this.country, this.region, this.subregion, this.locale, this.locus, this.excavation, this.river, this.classification, this.rightsAndReproduction, this.linkResource, this.metadataDate, this.repository, this.objectURL, final  List<TagModel>? tags, this.objectWikidata_URL, this.isTimelineWork, this.GalleryNumber}): _additionalImages = additionalImages,_constituents = constituents,_measurements = measurements,_tags = tags;
  factory _MetObjectModel.fromJson(Map<String, dynamic> json) => _$MetObjectModelFromJson(json);

@override final  int? objectID;
@override final  bool? isHighlight;
@override final  String? accessionNumber;
@override final  String? accessionYear;
@override final  bool? isPublicDomain;
@override final  String? primaryImage;
@override final  String? primaryImageSmall;
 final  List<String>? _additionalImages;
@override List<String>? get additionalImages {
  final value = _additionalImages;
  if (value == null) return null;
  if (_additionalImages is EqualUnmodifiableListView) return _additionalImages;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<ConstituentModel>? _constituents;
@override List<ConstituentModel>? get constituents {
  final value = _constituents;
  if (value == null) return null;
  if (_constituents is EqualUnmodifiableListView) return _constituents;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  String? department;
@override final  String? objectName;
@override final  String? title;
@override final  String? culture;
@override final  String? period;
@override final  String? dynasty;
@override final  String? reign;
@override final  String? portfolio;
@override final  String? artistRole;
@override final  String? artistPrefix;
@override final  String? artistDisplayName;
@override final  String? artistDisplayBio;
@override final  String? artistSuffix;
@override final  String? artistAlphaSort;
@override final  String? artistNationality;
@override final  String? artistBeginDate;
@override final  String? artistEndDate;
@override final  String? artistGender;
@override final  String? artistWikidata_URL;
@override final  String? artistULAN_URL;
@override final  String? objectDate;
@override final  int? objectBeginDate;
@override final  int? objectEndDate;
@override final  String? medium;
@override final  String? dimensions;
 final  List<MeasurementModel>? _measurements;
@override List<MeasurementModel>? get measurements {
  final value = _measurements;
  if (value == null) return null;
  if (_measurements is EqualUnmodifiableListView) return _measurements;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  String? creditLine;
@override final  String? geographyType;
@override final  String? city;
@override final  String? state;
@override final  String? county;
@override final  String? country;
@override final  String? region;
@override final  String? subregion;
@override final  String? locale;
@override final  String? locus;
@override final  String? excavation;
@override final  String? river;
@override final  String? classification;
@override final  String? rightsAndReproduction;
@override final  String? linkResource;
@override final  String? metadataDate;
@override final  String? repository;
@override final  String? objectURL;
 final  List<TagModel>? _tags;
@override List<TagModel>? get tags {
  final value = _tags;
  if (value == null) return null;
  if (_tags is EqualUnmodifiableListView) return _tags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  String? objectWikidata_URL;
@override final  bool? isTimelineWork;
@override final  String? GalleryNumber;

/// Create a copy of MetObjectModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MetObjectModelCopyWith<_MetObjectModel> get copyWith => __$MetObjectModelCopyWithImpl<_MetObjectModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MetObjectModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MetObjectModel&&(identical(other.objectID, objectID) || other.objectID == objectID)&&(identical(other.isHighlight, isHighlight) || other.isHighlight == isHighlight)&&(identical(other.accessionNumber, accessionNumber) || other.accessionNumber == accessionNumber)&&(identical(other.accessionYear, accessionYear) || other.accessionYear == accessionYear)&&(identical(other.isPublicDomain, isPublicDomain) || other.isPublicDomain == isPublicDomain)&&(identical(other.primaryImage, primaryImage) || other.primaryImage == primaryImage)&&(identical(other.primaryImageSmall, primaryImageSmall) || other.primaryImageSmall == primaryImageSmall)&&const DeepCollectionEquality().equals(other._additionalImages, _additionalImages)&&const DeepCollectionEquality().equals(other._constituents, _constituents)&&(identical(other.department, department) || other.department == department)&&(identical(other.objectName, objectName) || other.objectName == objectName)&&(identical(other.title, title) || other.title == title)&&(identical(other.culture, culture) || other.culture == culture)&&(identical(other.period, period) || other.period == period)&&(identical(other.dynasty, dynasty) || other.dynasty == dynasty)&&(identical(other.reign, reign) || other.reign == reign)&&(identical(other.portfolio, portfolio) || other.portfolio == portfolio)&&(identical(other.artistRole, artistRole) || other.artistRole == artistRole)&&(identical(other.artistPrefix, artistPrefix) || other.artistPrefix == artistPrefix)&&(identical(other.artistDisplayName, artistDisplayName) || other.artistDisplayName == artistDisplayName)&&(identical(other.artistDisplayBio, artistDisplayBio) || other.artistDisplayBio == artistDisplayBio)&&(identical(other.artistSuffix, artistSuffix) || other.artistSuffix == artistSuffix)&&(identical(other.artistAlphaSort, artistAlphaSort) || other.artistAlphaSort == artistAlphaSort)&&(identical(other.artistNationality, artistNationality) || other.artistNationality == artistNationality)&&(identical(other.artistBeginDate, artistBeginDate) || other.artistBeginDate == artistBeginDate)&&(identical(other.artistEndDate, artistEndDate) || other.artistEndDate == artistEndDate)&&(identical(other.artistGender, artistGender) || other.artistGender == artistGender)&&(identical(other.artistWikidata_URL, artistWikidata_URL) || other.artistWikidata_URL == artistWikidata_URL)&&(identical(other.artistULAN_URL, artistULAN_URL) || other.artistULAN_URL == artistULAN_URL)&&(identical(other.objectDate, objectDate) || other.objectDate == objectDate)&&(identical(other.objectBeginDate, objectBeginDate) || other.objectBeginDate == objectBeginDate)&&(identical(other.objectEndDate, objectEndDate) || other.objectEndDate == objectEndDate)&&(identical(other.medium, medium) || other.medium == medium)&&(identical(other.dimensions, dimensions) || other.dimensions == dimensions)&&const DeepCollectionEquality().equals(other._measurements, _measurements)&&(identical(other.creditLine, creditLine) || other.creditLine == creditLine)&&(identical(other.geographyType, geographyType) || other.geographyType == geographyType)&&(identical(other.city, city) || other.city == city)&&(identical(other.state, state) || other.state == state)&&(identical(other.county, county) || other.county == county)&&(identical(other.country, country) || other.country == country)&&(identical(other.region, region) || other.region == region)&&(identical(other.subregion, subregion) || other.subregion == subregion)&&(identical(other.locale, locale) || other.locale == locale)&&(identical(other.locus, locus) || other.locus == locus)&&(identical(other.excavation, excavation) || other.excavation == excavation)&&(identical(other.river, river) || other.river == river)&&(identical(other.classification, classification) || other.classification == classification)&&(identical(other.rightsAndReproduction, rightsAndReproduction) || other.rightsAndReproduction == rightsAndReproduction)&&(identical(other.linkResource, linkResource) || other.linkResource == linkResource)&&(identical(other.metadataDate, metadataDate) || other.metadataDate == metadataDate)&&(identical(other.repository, repository) || other.repository == repository)&&(identical(other.objectURL, objectURL) || other.objectURL == objectURL)&&const DeepCollectionEquality().equals(other._tags, _tags)&&(identical(other.objectWikidata_URL, objectWikidata_URL) || other.objectWikidata_URL == objectWikidata_URL)&&(identical(other.isTimelineWork, isTimelineWork) || other.isTimelineWork == isTimelineWork)&&(identical(other.GalleryNumber, GalleryNumber) || other.GalleryNumber == GalleryNumber));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,objectID,isHighlight,accessionNumber,accessionYear,isPublicDomain,primaryImage,primaryImageSmall,const DeepCollectionEquality().hash(_additionalImages),const DeepCollectionEquality().hash(_constituents),department,objectName,title,culture,period,dynasty,reign,portfolio,artistRole,artistPrefix,artistDisplayName,artistDisplayBio,artistSuffix,artistAlphaSort,artistNationality,artistBeginDate,artistEndDate,artistGender,artistWikidata_URL,artistULAN_URL,objectDate,objectBeginDate,objectEndDate,medium,dimensions,const DeepCollectionEquality().hash(_measurements),creditLine,geographyType,city,state,county,country,region,subregion,locale,locus,excavation,river,classification,rightsAndReproduction,linkResource,metadataDate,repository,objectURL,const DeepCollectionEquality().hash(_tags),objectWikidata_URL,isTimelineWork,GalleryNumber]);

@override
String toString() {
  return 'MetObjectModel(objectID: $objectID, isHighlight: $isHighlight, accessionNumber: $accessionNumber, accessionYear: $accessionYear, isPublicDomain: $isPublicDomain, primaryImage: $primaryImage, primaryImageSmall: $primaryImageSmall, additionalImages: $additionalImages, constituents: $constituents, department: $department, objectName: $objectName, title: $title, culture: $culture, period: $period, dynasty: $dynasty, reign: $reign, portfolio: $portfolio, artistRole: $artistRole, artistPrefix: $artistPrefix, artistDisplayName: $artistDisplayName, artistDisplayBio: $artistDisplayBio, artistSuffix: $artistSuffix, artistAlphaSort: $artistAlphaSort, artistNationality: $artistNationality, artistBeginDate: $artistBeginDate, artistEndDate: $artistEndDate, artistGender: $artistGender, artistWikidata_URL: $artistWikidata_URL, artistULAN_URL: $artistULAN_URL, objectDate: $objectDate, objectBeginDate: $objectBeginDate, objectEndDate: $objectEndDate, medium: $medium, dimensions: $dimensions, measurements: $measurements, creditLine: $creditLine, geographyType: $geographyType, city: $city, state: $state, county: $county, country: $country, region: $region, subregion: $subregion, locale: $locale, locus: $locus, excavation: $excavation, river: $river, classification: $classification, rightsAndReproduction: $rightsAndReproduction, linkResource: $linkResource, metadataDate: $metadataDate, repository: $repository, objectURL: $objectURL, tags: $tags, objectWikidata_URL: $objectWikidata_URL, isTimelineWork: $isTimelineWork, GalleryNumber: $GalleryNumber)';
}


}

/// @nodoc
abstract mixin class _$MetObjectModelCopyWith<$Res> implements $MetObjectModelCopyWith<$Res> {
  factory _$MetObjectModelCopyWith(_MetObjectModel value, $Res Function(_MetObjectModel) _then) = __$MetObjectModelCopyWithImpl;
@override @useResult
$Res call({
 int? objectID, bool? isHighlight, String? accessionNumber, String? accessionYear, bool? isPublicDomain, String? primaryImage, String? primaryImageSmall, List<String>? additionalImages, List<ConstituentModel>? constituents, String? department, String? objectName, String? title, String? culture, String? period, String? dynasty, String? reign, String? portfolio, String? artistRole, String? artistPrefix, String? artistDisplayName, String? artistDisplayBio, String? artistSuffix, String? artistAlphaSort, String? artistNationality, String? artistBeginDate, String? artistEndDate, String? artistGender, String? artistWikidata_URL, String? artistULAN_URL, String? objectDate, int? objectBeginDate, int? objectEndDate, String? medium, String? dimensions, List<MeasurementModel>? measurements, String? creditLine, String? geographyType, String? city, String? state, String? county, String? country, String? region, String? subregion, String? locale, String? locus, String? excavation, String? river, String? classification, String? rightsAndReproduction, String? linkResource, String? metadataDate, String? repository, String? objectURL, List<TagModel>? tags, String? objectWikidata_URL, bool? isTimelineWork, String? GalleryNumber
});




}
/// @nodoc
class __$MetObjectModelCopyWithImpl<$Res>
    implements _$MetObjectModelCopyWith<$Res> {
  __$MetObjectModelCopyWithImpl(this._self, this._then);

  final _MetObjectModel _self;
  final $Res Function(_MetObjectModel) _then;

/// Create a copy of MetObjectModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? objectID = freezed,Object? isHighlight = freezed,Object? accessionNumber = freezed,Object? accessionYear = freezed,Object? isPublicDomain = freezed,Object? primaryImage = freezed,Object? primaryImageSmall = freezed,Object? additionalImages = freezed,Object? constituents = freezed,Object? department = freezed,Object? objectName = freezed,Object? title = freezed,Object? culture = freezed,Object? period = freezed,Object? dynasty = freezed,Object? reign = freezed,Object? portfolio = freezed,Object? artistRole = freezed,Object? artistPrefix = freezed,Object? artistDisplayName = freezed,Object? artistDisplayBio = freezed,Object? artistSuffix = freezed,Object? artistAlphaSort = freezed,Object? artistNationality = freezed,Object? artistBeginDate = freezed,Object? artistEndDate = freezed,Object? artistGender = freezed,Object? artistWikidata_URL = freezed,Object? artistULAN_URL = freezed,Object? objectDate = freezed,Object? objectBeginDate = freezed,Object? objectEndDate = freezed,Object? medium = freezed,Object? dimensions = freezed,Object? measurements = freezed,Object? creditLine = freezed,Object? geographyType = freezed,Object? city = freezed,Object? state = freezed,Object? county = freezed,Object? country = freezed,Object? region = freezed,Object? subregion = freezed,Object? locale = freezed,Object? locus = freezed,Object? excavation = freezed,Object? river = freezed,Object? classification = freezed,Object? rightsAndReproduction = freezed,Object? linkResource = freezed,Object? metadataDate = freezed,Object? repository = freezed,Object? objectURL = freezed,Object? tags = freezed,Object? objectWikidata_URL = freezed,Object? isTimelineWork = freezed,Object? GalleryNumber = freezed,}) {
  return _then(_MetObjectModel(
objectID: freezed == objectID ? _self.objectID : objectID // ignore: cast_nullable_to_non_nullable
as int?,isHighlight: freezed == isHighlight ? _self.isHighlight : isHighlight // ignore: cast_nullable_to_non_nullable
as bool?,accessionNumber: freezed == accessionNumber ? _self.accessionNumber : accessionNumber // ignore: cast_nullable_to_non_nullable
as String?,accessionYear: freezed == accessionYear ? _self.accessionYear : accessionYear // ignore: cast_nullable_to_non_nullable
as String?,isPublicDomain: freezed == isPublicDomain ? _self.isPublicDomain : isPublicDomain // ignore: cast_nullable_to_non_nullable
as bool?,primaryImage: freezed == primaryImage ? _self.primaryImage : primaryImage // ignore: cast_nullable_to_non_nullable
as String?,primaryImageSmall: freezed == primaryImageSmall ? _self.primaryImageSmall : primaryImageSmall // ignore: cast_nullable_to_non_nullable
as String?,additionalImages: freezed == additionalImages ? _self._additionalImages : additionalImages // ignore: cast_nullable_to_non_nullable
as List<String>?,constituents: freezed == constituents ? _self._constituents : constituents // ignore: cast_nullable_to_non_nullable
as List<ConstituentModel>?,department: freezed == department ? _self.department : department // ignore: cast_nullable_to_non_nullable
as String?,objectName: freezed == objectName ? _self.objectName : objectName // ignore: cast_nullable_to_non_nullable
as String?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,culture: freezed == culture ? _self.culture : culture // ignore: cast_nullable_to_non_nullable
as String?,period: freezed == period ? _self.period : period // ignore: cast_nullable_to_non_nullable
as String?,dynasty: freezed == dynasty ? _self.dynasty : dynasty // ignore: cast_nullable_to_non_nullable
as String?,reign: freezed == reign ? _self.reign : reign // ignore: cast_nullable_to_non_nullable
as String?,portfolio: freezed == portfolio ? _self.portfolio : portfolio // ignore: cast_nullable_to_non_nullable
as String?,artistRole: freezed == artistRole ? _self.artistRole : artistRole // ignore: cast_nullable_to_non_nullable
as String?,artistPrefix: freezed == artistPrefix ? _self.artistPrefix : artistPrefix // ignore: cast_nullable_to_non_nullable
as String?,artistDisplayName: freezed == artistDisplayName ? _self.artistDisplayName : artistDisplayName // ignore: cast_nullable_to_non_nullable
as String?,artistDisplayBio: freezed == artistDisplayBio ? _self.artistDisplayBio : artistDisplayBio // ignore: cast_nullable_to_non_nullable
as String?,artistSuffix: freezed == artistSuffix ? _self.artistSuffix : artistSuffix // ignore: cast_nullable_to_non_nullable
as String?,artistAlphaSort: freezed == artistAlphaSort ? _self.artistAlphaSort : artistAlphaSort // ignore: cast_nullable_to_non_nullable
as String?,artistNationality: freezed == artistNationality ? _self.artistNationality : artistNationality // ignore: cast_nullable_to_non_nullable
as String?,artistBeginDate: freezed == artistBeginDate ? _self.artistBeginDate : artistBeginDate // ignore: cast_nullable_to_non_nullable
as String?,artistEndDate: freezed == artistEndDate ? _self.artistEndDate : artistEndDate // ignore: cast_nullable_to_non_nullable
as String?,artistGender: freezed == artistGender ? _self.artistGender : artistGender // ignore: cast_nullable_to_non_nullable
as String?,artistWikidata_URL: freezed == artistWikidata_URL ? _self.artistWikidata_URL : artistWikidata_URL // ignore: cast_nullable_to_non_nullable
as String?,artistULAN_URL: freezed == artistULAN_URL ? _self.artistULAN_URL : artistULAN_URL // ignore: cast_nullable_to_non_nullable
as String?,objectDate: freezed == objectDate ? _self.objectDate : objectDate // ignore: cast_nullable_to_non_nullable
as String?,objectBeginDate: freezed == objectBeginDate ? _self.objectBeginDate : objectBeginDate // ignore: cast_nullable_to_non_nullable
as int?,objectEndDate: freezed == objectEndDate ? _self.objectEndDate : objectEndDate // ignore: cast_nullable_to_non_nullable
as int?,medium: freezed == medium ? _self.medium : medium // ignore: cast_nullable_to_non_nullable
as String?,dimensions: freezed == dimensions ? _self.dimensions : dimensions // ignore: cast_nullable_to_non_nullable
as String?,measurements: freezed == measurements ? _self._measurements : measurements // ignore: cast_nullable_to_non_nullable
as List<MeasurementModel>?,creditLine: freezed == creditLine ? _self.creditLine : creditLine // ignore: cast_nullable_to_non_nullable
as String?,geographyType: freezed == geographyType ? _self.geographyType : geographyType // ignore: cast_nullable_to_non_nullable
as String?,city: freezed == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String?,state: freezed == state ? _self.state : state // ignore: cast_nullable_to_non_nullable
as String?,county: freezed == county ? _self.county : county // ignore: cast_nullable_to_non_nullable
as String?,country: freezed == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String?,region: freezed == region ? _self.region : region // ignore: cast_nullable_to_non_nullable
as String?,subregion: freezed == subregion ? _self.subregion : subregion // ignore: cast_nullable_to_non_nullable
as String?,locale: freezed == locale ? _self.locale : locale // ignore: cast_nullable_to_non_nullable
as String?,locus: freezed == locus ? _self.locus : locus // ignore: cast_nullable_to_non_nullable
as String?,excavation: freezed == excavation ? _self.excavation : excavation // ignore: cast_nullable_to_non_nullable
as String?,river: freezed == river ? _self.river : river // ignore: cast_nullable_to_non_nullable
as String?,classification: freezed == classification ? _self.classification : classification // ignore: cast_nullable_to_non_nullable
as String?,rightsAndReproduction: freezed == rightsAndReproduction ? _self.rightsAndReproduction : rightsAndReproduction // ignore: cast_nullable_to_non_nullable
as String?,linkResource: freezed == linkResource ? _self.linkResource : linkResource // ignore: cast_nullable_to_non_nullable
as String?,metadataDate: freezed == metadataDate ? _self.metadataDate : metadataDate // ignore: cast_nullable_to_non_nullable
as String?,repository: freezed == repository ? _self.repository : repository // ignore: cast_nullable_to_non_nullable
as String?,objectURL: freezed == objectURL ? _self.objectURL : objectURL // ignore: cast_nullable_to_non_nullable
as String?,tags: freezed == tags ? _self._tags : tags // ignore: cast_nullable_to_non_nullable
as List<TagModel>?,objectWikidata_URL: freezed == objectWikidata_URL ? _self.objectWikidata_URL : objectWikidata_URL // ignore: cast_nullable_to_non_nullable
as String?,isTimelineWork: freezed == isTimelineWork ? _self.isTimelineWork : isTimelineWork // ignore: cast_nullable_to_non_nullable
as bool?,GalleryNumber: freezed == GalleryNumber ? _self.GalleryNumber : GalleryNumber // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
