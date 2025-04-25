part of '../artwork_details_view_imports.dart';

class _ArtworkDetailsViewHeader extends StatelessWidget {
  const _ArtworkDetailsViewHeader({required this.artwork});

  final MetObjectModel artwork;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          artwork.culture.ext.validation.isNullOrEmpty
              ? AppStrings.unknown
              : artwork.culture!,
          style: context.ext.theme.textTheme.titleMedium?.copyWith(
            fontWeight: FontWeight.w500,
          ),
        ),
        Text(
          artwork.objectDate.ext.validation.isNullOrEmpty
              ? AppStrings.unknown
              : artwork.objectDate!,
          style: context.ext.theme.textTheme.titleSmall?.copyWith(
            color: context.appThemeExt.appColors.grey.byBrightness(
              context.ext.theme.isDark,
            ),
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
