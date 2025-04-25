part of '../collection_view_imports.dart';

class _CollectionViewHeader extends StatelessWidget {
  const _CollectionViewHeader();

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(maxHeight: context.ext.screen.height * 0.4),
      child: Stack(
        children: [
          ImagesEnum.imgCollection01.toAssetImage(
            fit: BoxFit.fitWidth,
            width: double.infinity,
          ),
          Positioned.fill(
            child: FittedBox(
              child: Text(
                AppStrings.collectionHeader,
                textAlign: TextAlign.center,
                style: context.ext.theme.textTheme.displaySmall?.copyWith(
                  color: context.appThemeExt.appColors.white.light,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ).appWidgetExt.paddingAll(20),
          ),
        ],
      ),
    );
  }
}
