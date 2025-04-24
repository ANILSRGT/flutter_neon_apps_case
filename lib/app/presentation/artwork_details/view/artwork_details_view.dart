part of '../artwork_details_view_imports.dart';

@RoutePage()
class ArtworkDetailsView extends StatelessWidget {
  const ArtworkDetailsView({required this.artwork, super.key});

  final MetObjectModel artwork;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(title: artwork.title ?? AppStrings.unknown),
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
                AppValues.lg.ext.sizedBox.vertical,
                Text(artwork.culture ?? AppStrings.unknown),
                Text(artwork.objectDate ?? AppStrings.unknown),
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
                    content: artwork.title ?? AppStrings.unknown,
                  ),
                  DetailText(
                    title: AppStrings.artworkDetailsDateHeader,
                    content: artwork.objectDate ?? AppStrings.unknown,
                  ),
                  DetailText(
                    title: AppStrings.artworkDetailsCultureHeader,
                    content: artwork.culture ?? AppStrings.unknown,
                  ),
                  DetailText(
                    title: AppStrings.artworkDetailsMediumHeader,
                    content: artwork.medium ?? AppStrings.unknown,
                  ),
                  DetailText(
                    title: AppStrings.artworkDetailsDimensionsHeader,
                    content: artwork.dimensions ?? AppStrings.unknown,
                  ),
                  DetailText(
                    title: AppStrings.artworkDetailsClassificationHeader,
                    content: artwork.classification ?? AppStrings.unknown,
                  ),
                  DetailText(
                    title: AppStrings.artworkDetailsCreditLineHeader,
                    content: artwork.creditLine ?? AppStrings.unknown,
                  ),
                  DetailText(
                    title: AppStrings.artworkDetailsObjectNumberHeader,
                    content: artwork.accessionNumber ?? AppStrings.unknown,
                  ),
                ],
              ).appWidgetExt.paddingSymmetric(
                horizontal: AppValues.xl.value,
                vertical: AppValues.lg.value,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
