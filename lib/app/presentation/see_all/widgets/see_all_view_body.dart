part of '../see_all_view_imports.dart';

class _SeeAllViewBody extends StatelessWidget {
  const _SeeAllViewBody();

  @override
  Widget build(BuildContext context) {
    final artworkIds = context.watch<SeeAllViewCubit>().state.artworksIds;
    final artworks = context.watch<SeeAllViewCubit>().state.artworks;
    final maxArtworks = context.watch<SeeAllViewCubit>().state.maxArtworks;

    if (artworkIds == null) {
      if (artworks.isNotEmpty) {
        return const Text('No artworks found!');
      }

      return Center(
        child: ColorFiltered(
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
        ),
      );
    }
    return SafeArea(
      bottom: false,
      child: ListView.separated(
        controller: context.read<SeeAllViewCubit>().scrollController,
        padding:
            AppValues.xl.ext.padding.horizontal +
            AppValues.xl3.ext.padding.directional.bottom,
        itemCount: maxArtworks,
        separatorBuilder: (_, __) => AppValues.xl.ext.sizedBox.vertical,
        itemBuilder: (context, index) {
          if (artworks.length <= index) {
            return MetArtworkCard.shimmer(
              height: 300,
              contentPadding: AppValues.xl.value,
            );
          }
          final artworkId = artworkIds[index];
          final artwork = artworks[artworkId];
          return artwork == null
              ? MetArtworkCard.shimmer(
                height: 300,
                contentPadding: AppValues.xl.value,
              )
              : artwork.isFail
              ? MetArtworkCard.error(
                error: artwork.asFail.error.message,
                height: 300,
                contentPadding: AppValues.xl.value,
              )
              : MetArtworkCard(
                artwork: artwork.asSuccess.data,
                height: 300,
                contentPadding: AppValues.xl.value,
              );
        },
      ),
    );
  }
}
