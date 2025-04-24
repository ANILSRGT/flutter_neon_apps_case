part of '../search_collection_view_imports.dart';

@RoutePage()
class SearchCollectionView extends StatelessWidget {
  const SearchCollectionView({required this.artworks, super.key});

  final List<MetObjectModel> artworks;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SearchViewCubit(initialData: artworks),
      child: const Scaffold(
        appBar: CustomAppbar(
          isBackButtonVisible: true,
          title: AppStrings.searchCollectionTitle,
        ),
        body: _SearchCollectionViewBody(),
      ),
    );
  }
}
