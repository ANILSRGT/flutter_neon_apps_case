part of '../artwork_details_view_imports.dart';

@RoutePage()
class ArtworkDetailsView extends StatelessWidget {
  const ArtworkDetailsView({required this.artwork, super.key});

  final MetObjectModel artwork;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        isBackButtonVisible: true,
        title:
            artwork.title.ext.validation.isNullOrEmpty
                ? AppStrings.unknown
                : artwork.title!,
      ),
      body: _ArtworkDetailsViewBody(artwork: artwork),
    );
  }
}
