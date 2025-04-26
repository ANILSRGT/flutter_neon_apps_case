part of '../favorites_view_imports.dart';

@RoutePage()
class FavoritesView extends StatelessWidget {
  const FavoritesView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppbar(isBackButtonVisible: true, title: 'Favorites'),
      body: _FavoritesViewBody(),
    );
  }
}
