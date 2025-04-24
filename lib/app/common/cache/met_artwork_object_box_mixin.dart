part of 'object_box.dart';

mixin MetArtworkObjectBoxMixin {
  late final Box<MetObjectModel> _metArtworkBox;
  late final Box<DepartmentModel> _departmentBox;

  Future<void> _initMetArtworkBox(Store store) async {
    _metArtworkBox = store.box<MetObjectModel>();
    _departmentBox = store.box<DepartmentModel>();
  }

  void putMetArtwork(MetObjectModel metArtwork) {
    _metArtworkBox.put(metArtwork);
  }

  void putMetArtworks(List<MetObjectModel> metArtworks) {
    _metArtworkBox.putMany(metArtworks);
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

  void putDepartments(List<DepartmentModel> departments) {
    _departmentBox.putMany(departments);
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
