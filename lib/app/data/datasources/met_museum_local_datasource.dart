import 'package:neon_apps_case/app/common/cache/object_box.dart';
import 'package:neon_apps_case/app/domain/models/department_model.dart';
import 'package:neon_apps_case/app/domain/models/met_object_model.dart';

abstract class MetMuseumLocalDataSource {
  Future<List<MetObjectModel>> getArtworks();
  Future<List<DepartmentModel>> getDepartments();
}

class MetMuseumLocalDataSourceImpl implements MetMuseumLocalDataSource {
  @override
  Future<List<MetObjectModel>> getArtworks() async {
    return ObjectBox.I.getAllMetArtworks();
  }

  @override
  Future<List<DepartmentModel>> getDepartments() async {
    return ObjectBox.I.getAllDepartments();
  }
}
