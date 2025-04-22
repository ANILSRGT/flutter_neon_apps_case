import 'package:flutter/material.dart';
import 'package:neon_apps_case/app/common/configs/enums/image_sizes_enum.dart';
import 'package:neon_apps_case/app/common/configs/enums/images_enum.dart';

class AppLogo extends StatelessWidget {
  const AppLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return ImagesEnum.logo.toAssetImage(size: ImageSizesEnum.x2);
  }
}
