part of '../home_view_imports.dart';

class _HomeViewFamousArtworks extends StatelessWidget {
  const _HomeViewFamousArtworks();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 3,
        itemBuilder: (_, index) {
          return const Card();
        },
      ),
    );
  }
}
