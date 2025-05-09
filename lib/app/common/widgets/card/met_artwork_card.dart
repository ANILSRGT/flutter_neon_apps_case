import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:neon_apps_case/app/common/configs/app_strings.dart';
import 'package:neon_apps_case/app/common/configs/theme/i_app_theme.dart';
import 'package:neon_apps_case/app/common/cubits/favorites/favorites_cubit.dart';
import 'package:neon_apps_case/app/common/extensions/widget_ext.dart';
import 'package:neon_apps_case/app/common/router/app_router.dart';
import 'package:neon_apps_case/app/common/widgets/card/app_card.dart';
import 'package:neon_apps_case/app/common/widgets/image/app_image.dart';
import 'package:neon_apps_case/app/domain/models/met_object_model.dart';
import 'package:neon_apps_case/injection.dart';
import 'package:penta_core/penta_core.dart';
import 'package:shimmer/shimmer.dart';

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

  static _ShimmerMetArtworkCard shimmer({
    double? height,
    double? width,
    double? contentPadding,
  }) {
    return _ShimmerMetArtworkCard(
      height: height,
      width: width,
      contentPadding: contentPadding,
    );
  }

  static _MetArtworkCardError error({
    required String error,
    double? height,
    double? width,
    double? contentPadding,
  }) {
    return _MetArtworkCardError(
      error: error,
      height: height,
      width: width,
      contentPadding: contentPadding,
    );
  }

  @override
  Widget build(BuildContext context) {
    final image =
        artwork.primaryImage != null
            ? artwork.primaryImage!
            : artwork.primaryImageSmall != null
            ? artwork.primaryImageSmall!
            : (artwork.additionalImages != null &&
                artwork.additionalImages!.isNotEmpty)
            ? artwork.additionalImages!.first
            : '';
    final isFavorite = context.watch<FavoritesCubit>().state.favorites.any(
      (e) => e.objectID != null && e.objectID == artwork.objectID,
    );
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
            child: Stack(
              fit: StackFit.expand,
              children: [
                Positioned.fill(
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: context.appThemeExt.appColors.grey.light
                              .withValues(alpha: 0.2),
                          width: 0.5,
                        ),
                      ),
                    ),
                    child: AppImage.network(url: image, fit: BoxFit.cover),
                  ),
                ),
                Positioned(
                  top: AppValues.md.value,
                  right: AppValues.md.value,
                  child: GestureDetector(
                    onTap: () {
                      context.read<FavoritesCubit>().toggleFavorite(artwork);
                    },
                    child: CircleAvatar(
                      backgroundColor: context.appThemeExt.appColors.white.light
                          .withValues(alpha: 0.4),
                      radius: 20,
                      child: Icon(
                        isFavorite
                            ? Icons.star_rounded
                            : Icons.star_border_rounded,
                        color:
                            isFavorite
                                ? context.appThemeExt.appColors.primary
                                : context
                                    .appThemeExt
                                    .appColors
                                    .white
                                    .light
                                    .onColor
                                    .withValues(alpha: 0.6),
                        size: 32,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                artwork.title.ext.validation.isNullOrEmpty
                    ? AppStrings.unknown
                    : artwork.title!,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: context.ext.theme.textTheme.titleMedium?.copyWith(
                  color: context.appThemeExt.appColors.grey.dark,
                  fontWeight: FontWeight.w600,
                  height: 1.1,
                ),
              ),
              Text(
                artwork.artistDisplayName.ext.validation.isNullOrEmpty
                    ? AppStrings.unknown
                    : artwork.artistDisplayName!,
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

class _MetArtworkCardError extends StatelessWidget {
  const _MetArtworkCardError({
    required this.error,
    this.height,
    this.width,
    this.contentPadding,
  });

  final String error;
  final double? height;
  final double? width;
  final double? contentPadding;

  @override
  Widget build(BuildContext context) {
    return AppCard(
      width: width,
      height: height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
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
              child: Center(child: Text(error)),
            ),
          ),
        ],
      ).appWidgetExt.paddingSymmetric(
        horizontal: AppValues.sm.value,
        vertical: contentPadding ?? AppValues.md.value,
      ),
    );
  }
}

class _ShimmerMetArtworkCard extends StatelessWidget {
  const _ShimmerMetArtworkCard({this.height, this.width, this.contentPadding});

  final double? height;
  final double? width;
  final double? contentPadding;

  @override
  Widget build(BuildContext context) {
    return AppCard(
      width: width,
      height: height,
      child: Shimmer.fromColors(
        baseColor: context.ext.theme.convertByBrightness(
          light: Colors.grey.shade300,
          dark: Colors.grey.shade700,
        ),
        highlightColor: context.ext.theme.convertByBrightness(
          light: Colors.grey.shade100,
          dark: Colors.grey.shade900,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: context.ext.theme.convertByBrightness(
                    light: Colors.grey.shade300,
                    dark: Colors.grey.shade700,
                  ),
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.grey.withValues(alpha: 0.2),
                      width: 0.5,
                    ),
                  ),
                ),
              ),
            ),
            // Text placeholders
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: AppValues.sm.value,
                vertical: contentPadding ?? AppValues.md.value,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    height: 16,
                    width: double.infinity,
                    color: Colors.white,
                  ),
                  const SizedBox(height: 8),
                  Container(height: 14, width: 100, color: Colors.white),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
