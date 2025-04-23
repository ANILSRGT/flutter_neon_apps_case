import 'package:flutter/material.dart';
import 'package:neon_apps_case/app/common/configs/enums/image_sizes_enum.dart';

enum ImagesEnum {
  logo('logo'),
  imgHome1('img_home_01'),
  imgInfo01('img_info_01'),
  imgInfo02('img_info_02'),
  imgInfo03('img_info_03'),
  imgCollection01('img_collection_01'),
  imgCollection02('img_collection_02'),
  imgCollection03('img_collection_03'),
  imgCollection04('img_collection_04'),
  imgCollection05('img_collection_05'),
  imgCollection06('img_collection_06'),
  imgCollection07('img_collection_07'),
  imgCollection08('img_collection_08'),
  imgCollection09('img_collection_09'),
  imgCollection10('img_collection_10'),
  imgCollection11('img_collection_11'),
  imgCollection12('img_collection_12'),
  imgCollection13('img_collection_13'),
  imgCollection14('img_collection_14'),
  imgCollection15('img_collection_15'),
  imgCollection16('img_collection_16'),
  imgCollection17('img_collection_17'),
  imgCollection18('img_collection_18'),
  imgCollection19('img_collection_19'),
  imgCollection20('img_collection_20'),
  imgCollection21('img_collection_21'),
  imgCollection22('img_collection_22');

  const ImagesEnum(this.fileName);

  final String fileName;

  String path({ImageSizesEnum size = ImageSizesEnum.x}) =>
      'assets/images/$fileName${switch (size) {
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
