part of '../search_collection_view_imports.dart';

@RoutePage()
class SearchCollectionView extends StatelessWidget {
  const SearchCollectionView({required this.artworksIds, super.key});

  final List<int> artworksIds;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SearchViewCubit(artworksIds: artworksIds)..init(),
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
