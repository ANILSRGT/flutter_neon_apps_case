part of '../artwork_details_view_imports.dart';

class _ArtworkDetailsViewImage extends StatelessWidget {
  const _ArtworkDetailsViewImage({required this.artwork});

  final MetObjectModel artwork;

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
    return Center(
      child: Container(
        width: double.infinity,
        constraints: BoxConstraints(
          minHeight: 100,
          maxWidth: context.ext.screen.byOrientation(
            portrait: double.infinity,
            landscape: 200,
          ),
        ),
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
          color: context.appThemeExt.appColors.isabelline.byBrightness(
            context.ext.theme.isDark,
          ),
          borderRadius: AppValues.md.ext.radius.border.all,
        ),
        child: Hero(
          tag: image.isEmpty ? GlobalKey() : image,
          child: AppImage.network(
            url:
                artwork.primaryImage != null
                    ? artwork.primaryImage!
                    : artwork.primaryImageSmall != null
                    ? artwork.primaryImageSmall!
                    : (artwork.additionalImages != null &&
                        artwork.additionalImages!.isNotEmpty)
                    ? artwork.additionalImages!.first
                    : '',
            fit: BoxFit.fitWidth,
          ),
        ),
      ),
    );
  }
}
