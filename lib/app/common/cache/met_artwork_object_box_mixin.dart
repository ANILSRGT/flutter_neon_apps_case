part of 'object_box.dart';

mixin MetArtworkObjectBoxMixin {
  late final Box<MetObjectModel> _metArtworkBox;
  late final Box<MetObjectModel> _lastSearchMetArtworksBox;
  late final Box<DepartmentModel> _departmentBox;

  Future<void> _initMetArtworkBox(Store store) async {
    _metArtworkBox = store.box<MetObjectModel>();
    _lastSearchMetArtworksBox = store.box<MetObjectModel>();
    _departmentBox = store.box<DepartmentModel>();
  }

  void putMetArtwork(MetObjectModel metArtwork) {
    if (metArtwork.objectID == null) return;
    final existingArtwork = getMetArtworkById(metArtwork.objectID!);
    if (existingArtwork != null) {
      _metArtworkBox.put(
        metArtwork.copyWith(localId: metArtwork.objectID),
        mode: PutMode.update,
      );
      return;
    } else {
      _metArtworkBox.put(
        metArtwork.copyWith(localId: metArtwork.objectID),
        mode: PutMode.insert,
      );
    }
  }

  void putMetArtworks(List<MetObjectModel> metArtworks) {
    final existingArtworks =
        metArtworks
            .where((artwork) => artwork.objectID != null)
            .map((artwork) => artwork.objectID!)
            .toList();
    final existingArtworkIds =
        _metArtworkBox
            .query(MetObjectModel_.objectID.oneOf(existingArtworks))
            .build()
            .findIds();
    final newArtworks =
        metArtworks
            .where((artwork) => !existingArtworkIds.contains(artwork.objectID))
            .map((artwork) => artwork.copyWith(localId: artwork.objectID))
            .toList();
    if (newArtworks.isNotEmpty) {
      _metArtworkBox.putMany(newArtworks, mode: PutMode.insert);
    }
    if (existingArtworkIds.isNotEmpty) {
      _metArtworkBox.putMany(
        metArtworks
            .where((artwork) => existingArtworkIds.contains(artwork.objectID))
            .toList(),
        mode: PutMode.update,
      );
    }
  }

  List<MetObjectModel> getAllMetArtworks() {
    return _metArtworkBox.getAll();
  }

  MetObjectModel? getMetArtworkById(int id) {
    return _metArtworkBox
        .query(MetObjectModel_.objectID.equals(id))
        .build()
        .findFirst();
  }

  void removeMetArtwork(int id) {
    _metArtworkBox.query(MetObjectModel_.objectID.equals(id)).build().remove();
  }

  void removeAllMetArtworks() {
    _metArtworkBox.removeAll();
  }

  void putLastSearchMetArtworks(List<MetObjectModel> metArtworks) {
    final existingArtworks =
        metArtworks
            .where((artwork) => artwork.objectID != null)
            .map((e) => e.copyWith(localId: e.objectID))
            .toList();
    if (existingArtworks.isNotEmpty) {
      removeLastSearchMetArtworks();
      _lastSearchMetArtworksBox.putMany(existingArtworks);
    }
  }

  List<MetObjectModel> getLastSearchMetArtworks() {
    return _lastSearchMetArtworksBox.getAll();
  }

  void removeLastSearchMetArtworks() {
    _lastSearchMetArtworksBox.removeAll();
  }

  void putDepartments(List<DepartmentModel> departments) {
    _departmentBox.putMany(
      departments.map((e) => e.copyWith(localId: e.departmentId)).toList(),
    );
  }

  List<DepartmentModel> getAllDepartments() {
    return _departmentBox.getAll();
  }

  DepartmentModel? getDepartmentById(int id) {
    return _departmentBox
        .query(DepartmentModel_.departmentId.equals(id))
        .build()
        .findFirst();
  }

  void removeDepartment(int id) {
    _departmentBox
        .query(DepartmentModel_.departmentId.equals(id))
        .build()
        .remove();
  }

  void removeAllDepartments() {
    _departmentBox.removeAll();
  }
}
