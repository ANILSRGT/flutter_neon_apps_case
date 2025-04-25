part of '../info_view_imports.dart';

class _InfoViewLocationsAndHours extends StatelessWidget {
  const _InfoViewLocationsAndHours();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          AppStrings.infoLocationsAndHoursHeader,
          style: context.ext.theme.textTheme.titleLarge?.copyWith(
            fontWeight: FontWeight.w500,
          ),
        ),
        AppValues.md.ext.sizedBox.vertical,
        ImagesEnum.imgInfo02.toAssetImage(
          fit: BoxFit.fitWidth,
          width: double.infinity,
        ),
        AppValues.md.ext.sizedBox.vertical,
        Text(
          AppStrings.infoLocationFifthAvenueTitle,
          style: context.ext.theme.textTheme.titleMedium?.copyWith(
            fontWeight: FontWeight.w500,
          ),
        ),
        AppValues.md.ext.sizedBox.vertical,
        const DetailText(
          title: AppStrings.infoLocationFifthAvenueHoursTitle,
          content: AppStrings.infoLocationFifthAvenueHoursContent,
        ),
        AppValues.md.ext.sizedBox.vertical,
        const DetailText(
          title: AppStrings.infoLocationFifthAvenueExtendedHoursTitle,
          content: AppStrings.infoLocationFifthAvenueExtendedHoursContent,
        ),
        AppValues.md.ext.sizedBox.vertical,
        const DetailText(
          title: AppStrings.infoLocationFifthAvenueClosedTitle,
          content: AppStrings.infoLocationFifthAvenueClosedContent,
        ),
        AppValues.md.ext.sizedBox.vertical,
        const DetailText(
          title: AppStrings.infoLocationFifthAvenueAddressTitle,
          content: AppStrings.infoLocationFifthAvenueAddressContent,
        ),
        AppValues.md.ext.sizedBox.vertical,
        const DetailText(
          title: AppStrings.infoLocationFifthAvenuePhoneTitle,
          content: AppStrings.infoLocationFifthAvenuePhoneContent,
        ),
        AppValues.xl2.ext.sizedBox.vertical,
        ImagesEnum.imgInfo03.toAssetImage(
          fit: BoxFit.fitWidth,
          width: double.infinity,
        ),
        AppValues.md.ext.sizedBox.vertical,
        Text(
          AppStrings.infoLocationCloistersTitle,
          style: context.ext.theme.textTheme.titleMedium?.copyWith(
            fontWeight: FontWeight.w500,
          ),
        ),
        AppValues.md.ext.sizedBox.vertical,
        const DetailText(
          title: AppStrings.infoLocationCloistersHoursTitle,
          content: AppStrings.infoLocationCloistersHoursContent,
        ),
        AppValues.md.ext.sizedBox.vertical,
        const DetailText(
          title: AppStrings.infoLocationCloistersClosedTitle,
          content: AppStrings.infoLocationCloistersClosedContent,
        ),
        AppValues.md.ext.sizedBox.vertical,
        const DetailText(
          title: AppStrings.infoLocationCloistersAddressTitle,
          content: AppStrings.infoLocationCloistersAddressContent,
        ),
        AppValues.md.ext.sizedBox.vertical,
        const DetailText(
          title: AppStrings.infoLocationCloistersPhoneTitle,
          content: AppStrings.infoLocationCloistersPhoneContent,
        ),
      ],
    ).appWidgetExt.paddingSymmetric(horizontal: AppValues.xl2.value);
  }
}
