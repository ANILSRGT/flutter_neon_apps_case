part of '../home_view_imports.dart';

class _HomeViewBody extends StatelessWidget {
  const _HomeViewBody();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            AppValues.xl2.ext.sizedBox.vertical,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              spacing: AppValues.sm.value,
              children: [
                const SizedBox.square(dimension: 40),
                const SizedBox.square(dimension: 70, child: AppLogo()),
                CircleAvatar(
                  radius: 20,
                  backgroundColor: context.appThemeExt.appColors.primary,
                  foregroundColor:
                      context.appThemeExt.appColors.primary.onColor,
                  child: IconButton(
                    onPressed:
                        () => Injection.I.read<AppRouter>().push(
                          const FavoritesRoute(),
                        ),
                    iconSize: 24,
                    icon: const Icon(Icons.star_rounded),
                  ),
                ),
              ],
            ).appWidgetExt.paddingSymmetric(horizontal: AppValues.xl.value),
            AppValues.xl4.ext.sizedBox.vertical,
            const _HomeViewHeader(),
            AppValues.xl2.ext.sizedBox.vertical,
            _HomeViewChildWithHeader(
              header: AppStrings.homeCurrentExhibitionsHeader,
              artworkIds:
                  context.watch<HomeCubit>().state.exhibitionsArtworksIds,
              artworks: context.watch<HomeCubit>().state.exhibitionsArtworks,
            ),
            AppValues.xl2.ext.sizedBox.vertical,
            _HomeViewChildWithHeader(
              header: AppStrings.homeFamousArtworksHeader,
              artworkIds: context.watch<HomeCubit>().state.famousArtworksIds,
              artworks: context.watch<HomeCubit>().state.famousArtworks,
            ),
            AppValues.xl.ext.sizedBox.vertical,
          ],
        ),
      ),
    );
  }
}
