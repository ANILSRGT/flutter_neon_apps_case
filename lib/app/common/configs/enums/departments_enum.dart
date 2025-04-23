import 'package:neon_apps_case/app/common/configs/enums/images_enum.dart';
import 'package:penta_core/penta_core.dart';

enum DepartmentsEnum {
  americanDecorativeArts(1),
  ancientNearEasternArt(3),
  armsAndArmor(4),
  artsOfAfricaOceaniaAndTheAmericas(5),
  asianArt(6),
  theCloisters(7),
  theCostumeInstitute(8),
  drawingsAndPrints(9),
  egyptianArt(10),
  europeanPaintings(11),
  europeanSculptureAndDecorativeArts(12),
  greekAndRomanArt(13),
  islamicArt(14),
  theRobertLehmanCollection(15),
  theLibraries(16),
  medievalArt(17),
  musicalInstruments(18),
  photographs(19),
  modernArt(21);

  const DepartmentsEnum(this.id);

  final int id;

  static DepartmentsEnum? fromId(int id) {
    return DepartmentsEnum.values.ext.where.firstOrNull((e) => e.id == id);
  }

  ImagesEnum get image => switch (this) {
    DepartmentsEnum.americanDecorativeArts => ImagesEnum.imgCollection01,
    DepartmentsEnum.ancientNearEasternArt => ImagesEnum.imgCollection02,
    DepartmentsEnum.armsAndArmor => ImagesEnum.imgCollection03,
    DepartmentsEnum.artsOfAfricaOceaniaAndTheAmericas =>
      ImagesEnum.imgCollection04,
    DepartmentsEnum.asianArt => ImagesEnum.imgCollection05,
    DepartmentsEnum.theCloisters => ImagesEnum.imgCollection06,
    DepartmentsEnum.theCostumeInstitute => ImagesEnum.imgCollection07,
    DepartmentsEnum.drawingsAndPrints => ImagesEnum.imgCollection08,
    DepartmentsEnum.egyptianArt => ImagesEnum.imgCollection09,
    DepartmentsEnum.europeanPaintings => ImagesEnum.imgCollection10,
    DepartmentsEnum.europeanSculptureAndDecorativeArts =>
      ImagesEnum.imgCollection11,
    DepartmentsEnum.greekAndRomanArt => ImagesEnum.imgCollection12,
    DepartmentsEnum.islamicArt => ImagesEnum.imgCollection13,
    DepartmentsEnum.theRobertLehmanCollection => ImagesEnum.imgCollection14,
    DepartmentsEnum.theLibraries => ImagesEnum.imgCollection15,
    DepartmentsEnum.medievalArt => ImagesEnum.imgCollection16,
    DepartmentsEnum.musicalInstruments => ImagesEnum.imgCollection17,
    DepartmentsEnum.photographs => ImagesEnum.imgCollection18,
    DepartmentsEnum.modernArt => ImagesEnum.imgCollection19,
  };
}
