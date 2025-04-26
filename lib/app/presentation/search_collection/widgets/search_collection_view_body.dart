part of '../search_collection_view_imports.dart';

class _SearchCollectionViewBody extends StatelessWidget {
  const _SearchCollectionViewBody();

  @override
  Widget build(BuildContext context) {
    final artworksIds = context.watch<SearchViewCubit>().state.artworksIds;
    final artworks = context.watch<SearchViewCubit>().state.artworks;
    final maxArtworks = context.watch<SearchViewCubit>().state.maxArtworks;
    return SingleChildScrollView(
      controller: context.read<SearchViewCubit>().scrollController,
      physics: const BouncingScrollPhysics(),
      padding: AppValues.xl.ext.padding.horizontal,
      child: SafeArea(
        child: Column(
          children: [
            AppTextFormField.search(
              context: context,
              controller: context.read<SearchViewCubit>().searchController,
              focusNode: context.read<SearchViewCubit>().searchFocusNode,
              onSearched: (value) {
                if (value == null) return;
                context.read<SearchViewCubit>().search(value);
              },
            ),
            AppValues.xl.ext.sizedBox.vertical,
            if (artworksIds == null)
              if (artworks.isNotEmpty)
                const Text('No artworks found!')
              else
                ColorFiltered(
                  colorFilter: ColorFilter.mode(
                    context.appThemeExt.appColors.background
                        .byBrightness(context.ext.theme.isDark)
                        .onColor,
                    BlendMode.srcATop,
                  ),
                  child: Lottie.asset(
                    LottiesEnum.loading.path,
                    width: 100,
                    height: 100,
                  ),
                )
            else
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: maxArtworks,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: context.ext.screen.width ~/ 180,
                  childAspectRatio: 0.6,
                  crossAxisSpacing: AppValues.xl.value,
                  mainAxisSpacing: AppValues.xl.value,
                ),
                itemBuilder: (_, index) {
                  if (artworks.length <= index) {
                    return MetArtworkCard.shimmer();
                  }
                  final artworkId = artworksIds[index];
                  final artwork = artworks[artworkId];
                  return artwork == null
                      ? MetArtworkCard.shimmer()
                      : artwork.isFail
                      ? MetArtworkCard.error(
                        error: artwork.asFail.error.message,
                      )
                      : MetArtworkCard(artwork: artwork.asSuccess.data);
                },
              ),
          ],
        ),
      ),
    );
  }
}
