part of '../favorites_view_imports.dart';

class _FavoritesViewBody extends StatelessWidget {
  const _FavoritesViewBody();

  @override
  Widget build(BuildContext context) {
    final favorites = context.watch<FavoritesCubit>().state.favorites;
    if (favorites.isEmpty) {
      return Center(
        child: Text(
          'No favorites yet',
          style: context.ext.theme.textTheme.titleLarge,
        ),
      );
    }
    return GridView.builder(
      padding:
          AppValues.xl.ext.padding.horizontal +
          AppValues.xl3.ext.padding.directional.bottom,
      itemCount: favorites.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: context.ext.screen.width ~/ 180,
        childAspectRatio: 0.6,
        crossAxisSpacing: AppValues.xl.value,
        mainAxisSpacing: AppValues.xl.value,
      ),
      itemBuilder: (_, index) {
        final artwork = favorites[index];
        return MetArtworkCard(artwork: artwork);
      },
    );
  }
}
