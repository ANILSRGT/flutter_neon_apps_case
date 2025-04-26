part of '../artwork_details_view_imports.dart';

@RoutePage()
class ArtworkDetailsView extends StatelessWidget {
  const ArtworkDetailsView({required this.artwork, super.key});

  final MetObjectModel artwork;

  @override
  Widget build(BuildContext context) {
    final isFavorite = context.watch<FavoritesCubit>().state.favorites.any(
      (element) => element.objectID == artwork.objectID,
    );
    return Scaffold(
      appBar: CustomAppbar(
        isBackButtonVisible: true,
        title:
            artwork.title.ext.validation.isNullOrEmpty
                ? AppStrings.unknown
                : artwork.title!,
        actions: [
          GestureDetector(
            onTap: () {
              context.read<FavoritesCubit>().toggleFavorite(artwork);
            },
            child: Icon(
              isFavorite ? Icons.star_rounded : Icons.star_border_rounded,
              color:
                  isFavorite
                      ? context.appThemeExt.appColors.primary
                      : context.appThemeExt.appColors.white.light.onColor
                          .withValues(alpha: 0.6),
              size: 28,
            ),
          ),
        ],
      ),
      body: _ArtworkDetailsViewBody(artwork: artwork),
    );
  }
}
