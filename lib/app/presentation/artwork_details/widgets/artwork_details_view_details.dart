part of '../artwork_details_view_imports.dart';

class _ArtworkDetailsViewDetails extends StatelessWidget {
  const _ArtworkDetailsViewDetails({required this.artwork});

  final MetObjectModel artwork;

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: context.appThemeExt.appColors.isabelline.byBrightness(
        context.ext.theme.isDark,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        spacing: AppValues.lg.value,
        children: [
          Text(
            AppStrings.artworkDetailsDetailsHeader,
            style: context.ext.theme.textTheme.titleLarge?.copyWith(
              letterSpacing: 0.8,
              fontWeight: FontWeight.w500,
            ),
          ),
          DetailText(
            title: AppStrings.artworkDetailsTitleHeader,
            content:
                artwork.title.ext.validation.isNullOrEmpty
                    ? AppStrings.unknown
                    : artwork.title!,
          ),
          DetailText(
            title: AppStrings.artworkDetailsDateHeader,
            content:
                artwork.objectDate.ext.validation.isNullOrEmpty
                    ? AppStrings.unknown
                    : artwork.objectDate!,
          ),
          DetailText(
            title: AppStrings.artworkDetailsCultureHeader,
            content:
                artwork.culture.ext.validation.isNullOrEmpty
                    ? AppStrings.unknown
                    : artwork.culture!,
          ),
          DetailText(
            title: AppStrings.artworkDetailsMediumHeader,
            content:
                artwork.medium.ext.validation.isNullOrEmpty
                    ? AppStrings.unknown
                    : artwork.medium!,
          ),
          DetailText(
            title: AppStrings.artworkDetailsDimensionsHeader,
            content:
                artwork.dimensions.ext.validation.isNullOrEmpty
                    ? AppStrings.unknown
                    : artwork.dimensions!,
          ),
          DetailText(
            title: AppStrings.artworkDetailsClassificationHeader,
            content:
                artwork.classification.ext.validation.isNullOrEmpty
                    ? AppStrings.unknown
                    : artwork.classification!,
          ),
          DetailText(
            title: AppStrings.artworkDetailsCreditLineHeader,
            content:
                artwork.creditLine.ext.validation.isNullOrEmpty
                    ? AppStrings.unknown
                    : artwork.creditLine!,
          ),
          DetailText(
            title: AppStrings.artworkDetailsObjectNumberHeader,
            content:
                artwork.accessionNumber.ext.validation.isNullOrEmpty
                    ? AppStrings.unknown
                    : artwork.accessionNumber!,
          ),
        ],
      ).appWidgetExt.paddingOnly(
        left: AppValues.xl.value,
        right: AppValues.xl.value,
        top: AppValues.lg.value,
        bottom: AppValues.xl6.value,
      ),
    );
  }
}
