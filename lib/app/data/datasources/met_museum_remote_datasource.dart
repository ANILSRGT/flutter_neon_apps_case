import 'package:dio/dio.dart';
import 'package:neon_apps_case/app/domain/models/department_model.dart';
import 'package:neon_apps_case/app/domain/models/met_object_model.dart';
import 'package:neon_apps_case/app/domain/models/met_objects_model.dart';
import 'package:neon_apps_case/app/domain/models/met_search_model.dart';
import 'package:penta_core/penta_core.dart';

abstract class MetMuseumRemoteDatasource {
  Future<ResponseModel<MetObjectsModel>> getArtworks();
  Future<ResponseModel<MetObjectModel>> getArtworkById({required int id});
  Future<ResponseModel<List<DepartmentModel>>> getDepartments();
  Future<ResponseModel<MetSearchModel>> searchArtworks({
    required String query,
    bool? isHighlight,
    bool? isOnView,
  });
}

class MetMuseumRemoteDatasourceImpl implements MetMuseumRemoteDatasource {
  const MetMuseumRemoteDatasourceImpl({required Dio dio}) : _dio = dio;

  final Dio _dio;

  @override
  Future<ResponseModel<MetObjectModel>> getArtworkById({
    required int id,
  }) async {
    final url = 'objects/$id';
    return _dio.get<MetObjectModel>(url).then((response) {
      final data = response.data;
      if (data == null || response.statusCode != 200) {
        return ResponseModelFail(
          error: ErrorModel(
            message: 'Failed to load artwork!',
            throwMessage:
                'MetMuseumRemoteDatasourceImpl.getArtworkById ${response.statusCode} : ${response.statusMessage}',
          ),
        );
      }

      return ResponseModelSuccess(data: data);
    });
  }

  @override
  Future<ResponseModel<MetObjectsModel>> getArtworks() async {
    const url = 'objects';
    return _dio.get<MetObjectsModel>(url).then((response) {
      final data = response.data;
      if (data == null || response.statusCode != 200) {
        return ResponseModelFail(
          error: ErrorModel(
            message: 'Failed to load artworks!',
            throwMessage:
                'MetMuseumRemoteDatasourceImpl.getArtworks ${response.statusCode} : ${response.statusMessage}',
          ),
        );
      }

      return ResponseModelSuccess(data: data);
    });
  }

  @override
  Future<ResponseModel<List<DepartmentModel>>> getDepartments() async {
    const url = 'departments';
    return _dio.get<Map<String, dynamic>>(url).then((response) {
      final data = response.data;
      if (data == null || response.statusCode != 200) {
        return ResponseModelFail(
          error: ErrorModel(
            message: 'Failed to load departments!',
            throwMessage:
                'MetMuseumRemoteDatasourceImpl.getDepartments ${response.statusCode} : ${response.statusMessage}',
          ),
        );
      }

      return ResponseModelSuccess(data: DepartmentModel.fromJsonList(data));
    });
  }

  @override
  Future<ResponseModel<MetSearchModel>> searchArtworks({
    required String query,
    bool? isHighlight,
    bool? isOnView,
  }) async {
    const url = 'search';
    final params = {
      'q': query,
      'hasImages': true,
      if (isHighlight != null) 'isHighlight': isHighlight,
      if (isOnView != null) 'isOnView': isOnView,
    };
    return _dio.get<MetSearchModel>(url, queryParameters: params).then((
      response,
    ) {
      final data = response.data;
      if (data == null || response.statusCode != 200) {
        return ResponseModelFail(
          error: ErrorModel(
            message: 'Failed to load artworks!',
            throwMessage:
                'MetMuseumRemoteDatasourceImpl.searchArtworks ${response.statusCode} : ${response.statusMessage}',
          ),
        );
      }

      return ResponseModelSuccess(data: data);
    });
  }
}
