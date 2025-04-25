part of '../artwork_details_view_imports.dart';

class _ArtworkDetailsViewBody extends StatelessWidget {
  const _ArtworkDetailsViewBody({required this.artwork});

  final MetObjectModel artwork;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                _ArtworkDetailsViewImage(artwork: artwork),
                AppValues.lg.ext.sizedBox.vertical,
                _ArtworkDetailsViewHeader(artwork: artwork),
              ],
            ).appWidgetExt.paddingSymmetric(horizontal: AppValues.xl.value),
            AppValues.xl3.ext.sizedBox.vertical,
            _ArtworkDetailsViewDetails(artwork: artwork),
          ],
        ),
      ),
    );
  }
}
