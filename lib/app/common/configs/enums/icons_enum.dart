import 'package:flutter/material.dart';
import 'package:neon_apps_case/app/common/configs/enums/image_sizes_enum.dart';

enum IconsEnum {
  btnBack('btn_back'),
  btnSearchSelected('btn_search_selected'),
  btnSearchUnselected('btn_search_unselected'),
  btnTabbarCollectionSelected('btn_tabbar_collection_selected'),
  btnTabbarCollectionUnselected('btn_tabbar_collection_unselected'),
  btnTabbarHomeSelected('btn_tabbar_home_selected'),
  btnTabbarHomeUnselected('btn_tabbar_home_unselected'),
  btnTabbarInfoSelected('btn_tabbar_info_selected'),
  btnTabbarInfoUnselected('btn_tabbar_info_unselected'),
  imgForward('img_forward');

  const IconsEnum(this.fileName);

  final String fileName;

  String path({ImageSizesEnum size = ImageSizesEnum.x}) =>
      'assets/icons/$fileName${switch (size) {
        ImageSizesEnum.x => '',
        ImageSizesEnum.x2 => '@2x',
        ImageSizesEnum.x3 => '@3x',
      }}.png';

  Image toAssetImage({
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    ImageSizesEnum size = ImageSizesEnum.x,
  }) {
    return Image.asset(
      path(size: size),
      width: width,
      height: height,
      fit: fit,
      errorBuilder: (_, __, ___) => const Icon(Icons.photo_library_outlined),
    );
  }

  ImageProvider toImageProvider({ImageSizesEnum size = ImageSizesEnum.x}) {
    return AssetImage(path(size: size));
  }
}
