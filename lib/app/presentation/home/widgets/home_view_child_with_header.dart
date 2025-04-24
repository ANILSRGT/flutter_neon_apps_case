part of '../home_view_imports.dart';

class _HomeViewChildWithHeader extends StatelessWidget {
  const _HomeViewChildWithHeader({
    required this.header,
    required this.artworks,
  });

  final String header;
  final List<MetObjectModel> artworks;

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
                Injection.I.read<AppRouter>().push(
                  SeeAllRoute(title: header, items: artworks),
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
        SizedBox(
          height: 310,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            padding: AppValues.xl.ext.padding.horizontal,
            itemCount: artworks.length,
            separatorBuilder: (_, index) {
              return AppValues.xl2.ext.sizedBox.horizontal;
            },
            itemBuilder: (_, index) {
              return MetArtworkCard.shimmer(width: 200);
              return MetArtworkCard(width: 200, artwork: artworks[index]);
            },
          ),
        ),
      ],
    );
  }
}
