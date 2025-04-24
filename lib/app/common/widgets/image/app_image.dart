import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:neon_apps_case/app/common/configs/enums/lotties_enum.dart';
import 'package:neon_apps_case/app/common/configs/theme/i_app_theme.dart';
import 'package:penta_core/penta_core.dart';

class AppImage extends StatelessWidget {
  const AppImage._({
    required this.image,
    this.height,
    this.width,
    this.fit,
    this.color,
    this.builderIconColor,
  });

  factory AppImage.network({
    required String url,
    double? height,
    double? width,
    BoxFit? fit,
    Color? color,
    Color? builderIconColor,
  }) {
    return AppImage._(
      image: CachedNetworkImageProvider(url, cacheKey: url),
      height: height,
      width: width,
      fit: fit,
      color: color,
      builderIconColor: builderIconColor,
    );
  }

  factory AppImage.asset({
    required String path,
    double? height,
    double? width,
    BoxFit? fit,
    Color? color,
    Color? builderIconColor,
  }) {
    return AppImage._(
      image: AssetImage(path),
      height: height,
      width: width,
      fit: fit,
      color: color,
      builderIconColor: builderIconColor,
    );
  }

  final ImageProvider image;
  final double? height;
  final double? width;
  final BoxFit? fit;
  final Color? color;
  final Color? builderIconColor;

  @override
  Widget build(BuildContext context) {
    return Image(
      image: image,
      height: height,
      width: width,
      fit: fit,
      color: color,
      errorBuilder: (_, __, ___) {
        return Icon(
          Icons.photo_library_rounded,
          color:
              builderIconColor ??
              context.appThemeExt.appColors.background
                  .byBrightness(context.ext.theme.isDark)
                  .onColor,
        );
      },
      loadingBuilder: (_, child, loadingProgress) {
        if (loadingProgress == null) {
          return child;
        }
        return Center(
          child: ColorFiltered(
            colorFilter: ColorFilter.mode(
              builderIconColor ??
                  context.appThemeExt.appColors.background
                      .byBrightness(context.ext.theme.isDark)
                      .onColor,
              BlendMode.srcATop,
            ),
            child: Lottie.asset(
              LottiesEnum.loading.path,
              width: 60,
              height: 60,
            ),
          ),
        );
      },
    );
  }
}
