import 'package:flutter/material.dart';
import 'package:neon_apps_case/app/common/configs/enums/image_sizes_enum.dart';

enum ImagesEnum {
  logo('logo'),
  imgHome1('img_home_01'),
  imgInfo01('img_info_01'),
  imgInfo02('img_info_02'),
  imgInfo03('img_info_03');

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
