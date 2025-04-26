import 'package:neon_apps_case/app/data/datasources/met_museum_remote_datasource.dart';
import 'package:neon_apps_case/app/domain/models/department_model.dart';
import 'package:neon_apps_case/app/domain/models/met_object_model.dart';
import 'package:neon_apps_case/app/domain/models/met_objects_model.dart';
import 'package:neon_apps_case/app/domain/models/met_search_model.dart';
import 'package:neon_apps_case/app/domain/repositories/met_museum_repo.dart';
import 'package:neon_apps_case/injection.dart';
import 'package:penta_core/penta_core.dart';

class MetMuseumRepoImpl extends MetMuseumRepo with DataRepoMixin {
  @override
  Future<ResponseModel<MetObjectModel>> getArtworkById({
    required int id,
  }) async {
    return Injection.I.read<MetMuseumRemoteDatasource>().getArtworkById(id: id);
  }

  @override
  Future<ResponseModel<MetObjectsModel>> getArtworks() async {
    return Injection.I.read<MetMuseumRemoteDatasource>().getArtworks();
  }

  @override
  Future<ResponseModel<List<DepartmentModel>>> getDepartments() async {
    return Injection.I.read<MetMuseumRemoteDatasource>().getDepartments();
  }

  @override
  Future<ResponseModel<MetSearchModel>> searchArtworks({
    String? query,
    bool? isHighlight,
    bool? isOnView,
    int? departmentId,
  }) async {
    return Injection.I.read<MetMuseumRemoteDatasource>().searchArtworks(
      query: query,
      isHighlight: isHighlight,
      isOnView: isOnView,
      departmentId: departmentId,
    );
  }
}
