part of '../home_view_imports.dart';

class _HomeViewBody extends StatelessWidget {
  const _HomeViewBody();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: CustomSafeArea.byBrightness(
        context: context,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            AppValues.xl2.ext.sizedBox.vertical,
            const SizedBox.square(dimension: 70, child: AppLogo()),
            AppValues.xl4.ext.sizedBox.vertical,
            const _HomeViewHeader(),
            AppValues.xl2.ext.sizedBox.vertical,
            _HomeViewChildWithHeader(
              onSeeAllTap: () {},
              header: 'Current Exhibitions',
              child: const _HomeViewCurrentExhibitions(),
            ),
            AppValues.xl2.ext.sizedBox.vertical,
            _HomeViewChildWithHeader(
              onSeeAllTap: () {},
              header: 'Upcoming Exhibitions',
              child: const _HomeViewFamousArtworks(),
            ),
          ],
        ),
      ),
    );
  }
}
