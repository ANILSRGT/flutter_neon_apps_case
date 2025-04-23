part of '../home_view_imports.dart';

class _HomeViewBody extends StatelessWidget {
  const _HomeViewBody();

  @override
  Widget build(BuildContext context) {
    final dummyArtworks = List.generate(10, (index) => const MetObjectModel());
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
              artworks: dummyArtworks,
            ),
            AppValues.xl2.ext.sizedBox.vertical,
            _HomeViewChildWithHeader(
              header: AppStrings.homeFamousArtworksHeader,
              artworks: dummyArtworks,
            ),
            AppValues.xl.ext.sizedBox.vertical,
          ],
        ),
      ),
    );
  }
}
