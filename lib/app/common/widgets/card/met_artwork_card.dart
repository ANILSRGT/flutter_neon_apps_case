import 'package:flutter/material.dart';
import 'package:neon_apps_case/app/common/configs/app_strings.dart';
import 'package:neon_apps_case/app/common/configs/theme/i_app_theme.dart';
import 'package:neon_apps_case/app/common/extensions/widget_ext.dart';
import 'package:neon_apps_case/app/common/router/app_router.dart';
import 'package:neon_apps_case/app/common/widgets/card/app_card.dart';
import 'package:neon_apps_case/app/common/widgets/image/app_image.dart';
import 'package:neon_apps_case/app/domain/models/met_object_model.dart';
import 'package:neon_apps_case/injection.dart';
import 'package:penta_core/penta_core.dart';

class MetArtworkCard extends StatelessWidget {
  const MetArtworkCard({
    required this.artwork,
    super.key,
    this.height,
    this.width,
    this.contentPadding,
  });

  final MetObjectModel artwork;
  final double? height;
  final double? width;
  final double? contentPadding;

  @override
  Widget build(BuildContext context) {
    return AppCard(
      onTap: () {
        Injection.I.read<AppRouter>().push(
          ArtworkDetailsRoute(artwork: artwork),
        );
      },
      width: width,
      height: height,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: DecoratedBox(
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: context.appThemeExt.appColors.grey.light.withValues(
                      alpha: 0.2,
                    ),
                    width: 0.5,
                  ),
                ),
              ),
              child: AppImage.network(
                url: artwork.primaryImageSmall ?? '',
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                artwork.title ?? AppStrings.unknown,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: context.ext.theme.textTheme.titleMedium?.copyWith(
                  color: context.appThemeExt.appColors.grey.dark,
                  fontWeight: FontWeight.w600,
                  height: 1.1,
                ),
              ),
              Text(
                artwork.artistDisplayName ?? AppStrings.unknown,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: context.ext.theme.textTheme.titleMedium?.copyWith(
                  color:
                      context.appThemeExt.appColors.isabelline
                          .byBrightness(context.ext.theme.isDark)
                          .onColor,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ).appWidgetExt.paddingSymmetric(
            horizontal: AppValues.sm.value,
            vertical: contentPadding ?? AppValues.md.value,
          ),
        ],
      ),
    );
  }
}
