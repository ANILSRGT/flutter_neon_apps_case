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
    String? query,
    bool? isHighlight,
    bool? isOnView,
    int? departmentId,
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
    try {
      final response = await _dio.get<Map<String, dynamic>>(url);
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

      return ResponseModelSuccess(data: MetObjectModel.fromJson(data));
    } on Exception catch (e) {
      return ResponseModelFail(
        error: ErrorModel(
          message: 'An error occurred while loading artwork!',
          throwMessage: 'MetMuseumRemoteDatasourceImpl.getArtworkById: $e',
        ),
      );
    }
  }

  @override
  Future<ResponseModel<MetObjectsModel>> getArtworks() async {
    const url = 'objects';
    try {
      final response = await _dio.get<Map<String, dynamic>>(url);
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

      return ResponseModelSuccess(data: MetObjectsModel.fromJson(data));
    } on Exception catch (e) {
      return ResponseModelFail(
        error: ErrorModel(
          message: 'An error occurred while loading artworks!',
          throwMessage: 'MetMuseumRemoteDatasourceImpl.getArtworks: $e',
        ),
      );
    }
  }

  @override
  Future<ResponseModel<List<DepartmentModel>>> getDepartments() async {
    const url = 'departments';
    try {
      final response = await _dio.get<Map<String, dynamic>>(url);
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
    } on Exception catch (e) {
      return ResponseModelFail(
        error: ErrorModel(
          message: 'An error occurred while loading departments!',
          throwMessage: 'MetMuseumRemoteDatasourceImpl.getDepartments: $e',
        ),
      );
    }
  }

  @override
  Future<ResponseModel<MetSearchModel>> searchArtworks({
    String? query,
    bool? isHighlight,
    bool? isOnView,
    int? departmentId,
  }) async {
    const url = 'search';
    final params = {
      if (query != null) 'q': query,
      'hasImages': true,
      if (isHighlight != null) 'isHighlight': isHighlight,
      if (isOnView != null) 'isOnView': isOnView,
      if (departmentId != null) 'departmentId': departmentId,
    };
    try {
      final response = await _dio.get<Map<String, dynamic>>(
        url,
        queryParameters: params,
      );
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

      return ResponseModelSuccess(data: MetSearchModel.fromJson(data));
    } on Exception catch (e) {
      return ResponseModelFail(
        error: ErrorModel(
          message: 'An error occurred while searching artworks!',
          throwMessage: 'MetMuseumRemoteDatasourceImpl.searchArtworks: $e',
        ),
      );
    }
  }
}
