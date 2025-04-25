import 'package:neon_apps_case/app/domain/models/department_model.dart';
import 'package:neon_apps_case/app/domain/models/met_object_model.dart';
import 'package:neon_apps_case/app/domain/models/met_objects_model.dart';
import 'package:penta_core/penta_core.dart';

abstract class MetMuseumRepo {
  Future<ResponseModel<MetObjectsModel>> getArtworks();
  Future<ResponseModel<MetObjectModel>> getArtworkById({required int id});
  Future<ResponseModel<List<DepartmentModel>>> getDepartments();
  Future<ResponseModel<List<MetObjectModel>>> searchArtworks({
    String? query,
    bool? isHighlight,
    bool? isOnView,
    int? departmentId,
  });
}
