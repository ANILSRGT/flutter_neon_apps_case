part of '../info_view_imports.dart';

class _InfoViewHeader extends StatelessWidget {
  const _InfoViewHeader();

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(maxHeight: context.ext.screen.height * 0.4),
      child: Stack(
        children: [
          ImagesEnum.imgInfo01.toAssetImage(
            fit: BoxFit.fitWidth,
            width: double.infinity,
          ),
          Positioned.fill(
            child: FittedBox(
              child: Text(
                AppStrings.infoHeader,
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
