part of '../search_collection_view_imports.dart';

class _SearchCollectionViewBody extends StatelessWidget {
  const _SearchCollectionViewBody();

  @override
  Widget build(BuildContext context) {
    final artworks = context.watch<SearchViewCubit>().state.artworks;
    return SingleChildScrollView(
      padding: AppValues.xl.ext.padding.horizontal,
      child: SafeArea(
        child: Column(
          children: [
            AppTextFormField.search(
              context: context,
              controller: TextEditingController(),
              focusNode: FocusNode(),
              onSearched: (value) {
                if (value == null) return;
                context.read<SearchViewCubit>().search(value);
              },
            ),
            AppValues.xl.ext.sizedBox.vertical,
            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: artworks?.length ?? 6,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: context.ext.screen.width ~/ 180,
                childAspectRatio: 0.6,
                crossAxisSpacing: AppValues.xl.value,
                mainAxisSpacing: AppValues.xl.value,
              ),
              itemBuilder: (_, index) {
                final artwork = artworks?[index];
                return artwork != null
                    ? MetArtworkCard(artwork: artwork)
                    : MetArtworkCard.shimmer();
              },
            ),
          ],
        ),
      ),
    );
  }
}
