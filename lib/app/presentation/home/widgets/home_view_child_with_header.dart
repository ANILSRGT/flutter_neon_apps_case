part of '../home_view_imports.dart';

class _HomeViewChildWithHeader extends StatelessWidget {
  const _HomeViewChildWithHeader({
    required this.header,
    required this.artworkIds,
    required this.artworks,
  });

  final String header;
  final List<int>? artworkIds;
  final Map<int, ResponseModel<MetObjectModel>> artworks;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          spacing: AppValues.sm.value,
          children: [
            HeaderText(
              text: header,
            ).appWidgetExt.paddingOnly(left: AppValues.xs.value),
            GestureDetector(
              onTap: () {
                if (artworkIds == null) {
                  showToast('No artworks found!');
                  return;
                }
                Injection.I.read<AppRouter>().push(
                  SeeAllRoute(title: header, artworkIds: artworkIds!),
                );
              },
              behavior: HitTestBehavior.translucent,
              child: Row(
                children: [
                  Text(
                    AppStrings.seeAll,
                    style: context.ext.theme.textTheme.bodyLarge?.copyWith(
                      color: context.appThemeExt.appColors.grey.light,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  IconsEnum.imgForward.toAssetImage(),
                ],
              ),
            ),
          ],
        ).appWidgetExt.paddingSymmetric(horizontal: AppValues.xl.value),
        AppValues.lg.ext.sizedBox.vertical,
        if (artworkIds == null)
          if (artworks.isNotEmpty)
            const Text('No artworks found!')
          else
            ColorFiltered(
              colorFilter: ColorFilter.mode(
                context.appThemeExt.appColors.background
                    .byBrightness(context.ext.theme.isDark)
                    .onColor,
                BlendMode.srcATop,
              ),
              child: Lottie.asset(
                LottiesEnum.loading.path,
                width: 100,
                height: 100,
              ),
            )
        else
          SizedBox(
            height: 310,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              padding: AppValues.xl.ext.padding.horizontal,
              itemCount: 6,
              separatorBuilder: (_, index) {
                return AppValues.xl2.ext.sizedBox.horizontal;
              },
              itemBuilder: (_, index) {
                if (artworks.length <= index) {
                  return MetArtworkCard.shimmer(width: 200);
                }
                final artworkId = artworkIds![index];
                final artwork = artworks[artworkId];
                return artwork == null
                    ? MetArtworkCard.shimmer(width: 200)
                    : artwork.isFail
                    ? MetArtworkCard.error(
                      error: artwork.asFail.error.message,
                      width: 200,
                    )
                    : MetArtworkCard(
                      artwork: artwork.asSuccess.data,
                      width: 200,
                    );
              },
            ),
          ),
      ],
    );
  }
}
