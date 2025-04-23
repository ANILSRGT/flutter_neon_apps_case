part of '../collection_view_imports.dart';

@RoutePage()
class CollectionView extends StatelessWidget {
  const CollectionView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: _CollectionViewBody());
  }
}
