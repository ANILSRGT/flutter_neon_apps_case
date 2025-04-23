part of '../search_collection_view_imports.dart';

@RoutePage()
class SearchCollectionView extends StatelessWidget {
  const SearchCollectionView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppbar(title: AppStrings.searchCollectionTitle),
      body: SingleChildScrollView(
        padding: AppValues.xl.ext.padding.horizontal,
        child: Column(
          children: [
            AppTextFormField.search(
              context: context,
              controller: TextEditingController(),
              focusNode: FocusNode(),
              onSearched: (value) {},
            ),
            AppValues.xl.ext.sizedBox.vertical,
            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 10,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: context.ext.screen.width ~/ 180,
                childAspectRatio: 0.6,
                crossAxisSpacing: AppValues.xl.value,
                mainAxisSpacing: AppValues.xl.value,
              ),
              itemBuilder: (_, index) {
                return const MetArtworkCard(artwork: MetObjectModel());
              },
            ),
          ],
        ),
      ),
    );
  }
}
