import 'package:flutter/material.dart';
import 'package:neon_apps_case/app/common/configs/theme/i_app_theme.dart';
import 'package:neon_apps_case/app/common/extensions/widget_ext.dart';
import 'package:neon_apps_case/app/common/widgets/card/app_card.dart';
import 'package:neon_apps_case/app/data/models/met_object_model.dart';
import 'package:penta_core/penta_core.dart';

class MetArtworkCard extends StatelessWidget {
  const MetArtworkCard({
    required this.metObjectModel,
    super.key,
    this.height = 240,
    this.width = 165,
  });

  final MetObjectModel metObjectModel;
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return AppCard(
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
              child: Image.network(
                metObjectModel.primaryImageSmall ?? '',
                fit: BoxFit.cover,
                errorBuilder:
                    (_, __, ___) => const Icon(Icons.photo_library_rounded),
              ),
            ),
          ),
          AppValues.md.ext.sizedBox.vertical,
          Text(
            metObjectModel.title ?? 'Unknown',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: context.ext.theme.textTheme.titleMedium?.copyWith(
              color: context.appThemeExt.appColors.grey.dark,
              fontWeight: FontWeight.w600,
            ),
          ).appWidgetExt.paddingSymmetric(horizontal: 8),
          Text(
            metObjectModel.artistDisplayName ?? 'Unknown',
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: context.ext.theme.textTheme.titleMedium?.copyWith(
              color:
                  context.appThemeExt.appColors.isabelline
                      .byBrightness(context.ext.theme.isDark)
                      .onColor,
              fontWeight: FontWeight.w500,
            ),
          ).appWidgetExt.paddingSymmetric(horizontal: 8),
        ],
      ).appWidgetExt.paddingOnly(bottom: 8),
    );
  }
}
