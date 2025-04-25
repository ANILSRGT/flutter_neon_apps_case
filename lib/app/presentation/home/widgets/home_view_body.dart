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
            const SizedBox.square(dimension: 70, child: AppLogo()),
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
