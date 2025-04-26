part of 'object_box.dart';

mixin MetArtworkObjectBoxMixin {
  late final Box<MetObjectModel> _favoriteArtworksBox;

  Future<void> _initMetArtworkBox(Store store) async {
    _favoriteArtworksBox = store.box<MetObjectModel>();
  }

  List<MetObjectModel> getFavoriteArtworks() {
    return _favoriteArtworksBox.getAll();
  }

  void toggleArtworkFavorites(MetObjectModel artwork) {
    final objectId = artwork.objectID;
    if (objectId == null) return;
    final artworks = _favoriteArtworksBox.getAll();
    final isArtworkInBox = artworks.any((e) => e.objectID == objectId);
    if (isArtworkInBox) {
      _favoriteArtworksBox.remove(objectId);
    } else {
      _favoriteArtworksBox.put(artwork.copyWith(localId: objectId));
    }
  }
}
