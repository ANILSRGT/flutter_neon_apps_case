part of '../artwork_details_view_imports.dart';

@RoutePage()
class ArtworkDetailsView extends StatelessWidget {
  const ArtworkDetailsView({required this.artwork, super.key});

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
    return Scaffold(
      appBar: CustomAppbar(
        isBackButtonVisible: true,
        title:
            artwork.title.ext.validation.isNullOrEmpty
                ? AppStrings.unknown
                : artwork.title!,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  constraints: const BoxConstraints(minHeight: 100),
                  decoration: BoxDecoration(
                    color: context.appThemeExt.appColors.isabelline
                        .byBrightness(context.ext.theme.isDark),
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
                AppValues.lg.ext.sizedBox.vertical,
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
            ).appWidgetExt.paddingSymmetric(horizontal: AppValues.xl.value),
            AppValues.xl3.ext.sizedBox.vertical,
            ColoredBox(
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
            ),
          ],
        ),
      ),
    );
  }
}
