part of '../collection_view_imports.dart';

mixin CollectionViewMixin {
  late final PentaDebounceable<void, String?> debouncer =
      PentaDebouncer.debounce(
        debounceDuration: const Duration(milliseconds: 500),
        function: (query) async {
          if (query == null) return;
          await _searchCollection(query: query);
        },
      );

  Future<void> _searchCollection({required String query}) async {
    if (query.isEmpty) return;

    await LoadingDialog.showLoadingDialog((ctx) async {
      final res = await Injection.I.read<MetMuseumRepo>().searchArtworks(
        query: query,
      );
      if (res.isFail) {
        showToast(res.asFail.error.message);
        Injection.I.read<AppRouter>().pop();
        return;
      }
      await Injection.I.read<AppRouter>().popAndPush(
        SearchCollectionRoute(artworks: res.asSuccess.data),
      );
    });
  }
}
