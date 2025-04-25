import 'package:neon_apps_case/app/common/cache/object_box.dart';
import 'package:neon_apps_case/app/data/datasources/met_museum_local_datasource.dart';
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
    return executeByDatasource(
      localCallback: () async {
        final artworks =
            await Injection.I.read<MetMuseumLocalDataSource>().getArtworks();
        final artwork = artworks.ext.where.firstOrNull(
          (artwork) => artwork.objectID == id,
        );
        if (artwork == null) {
          return const ResponseModelFail(
            error: ErrorModel(
              message: 'Artwork not found',
              throwMessage:
                  'MetMuseumRepoImpl.getArtworkById => artwork is null',
            ),
          );
        }
        return ResponseModelSuccess(data: artwork);
      },
      remoteCallback: () async {
        return Injection.I
            .read<MetMuseumRemoteDatasource>()
            .getArtworkById(id: id)
            .then((value) {
              if (value.isSuccess) {
                ObjectBox.I.putMetArtwork(value.asSuccess.data);
              }
              return value;
            });
      },
    );
  }

  @override
  Future<ResponseModel<MetObjectsModel>> getArtworks() async {
    return executeByDatasource(
      localCallback: () async {
        final artworks =
            await Injection.I.read<MetMuseumLocalDataSource>().getArtworks();
        final notNullArtworks =
            artworks
                .where((e) => e.objectID != null)
                .map((e) => e.objectID!)
                .toList();
        return ResponseModelSuccess(
          data: MetObjectsModel(
            total: notNullArtworks.length,
            objectIDs: notNullArtworks,
          ),
        );
      },
      remoteCallback: () async {
        return Injection.I.read<MetMuseumRemoteDatasource>().getArtworks();
      },
    );
  }

  @override
  Future<ResponseModel<List<DepartmentModel>>> getDepartments() async {
    return executeByDatasource(
      localCallback: () async {
        final departments =
            await Injection.I.read<MetMuseumLocalDataSource>().getDepartments();
        return ResponseModelSuccess(data: departments);
      },
      remoteCallback: () async {
        return Injection.I
            .read<MetMuseumRemoteDatasource>()
            .getDepartments()
            .then((value) {
              if (value.isSuccess) {
                ObjectBox.I.putDepartments(value.asSuccess.data);
              }
              return value;
            });
      },
    );
  }

  @override
  Future<ResponseModel<MetSearchModel>> searchArtworks({
    String? query,
    bool? isHighlight,
    bool? isOnView,
    int? departmentId,
  }) async {
    final res = await Injection.I
        .read<MetMuseumRemoteDatasource>()
        .searchArtworks(
          query: query,
          isHighlight: isHighlight,
          isOnView: isOnView,
          departmentId: departmentId,
        );
    return res;
  }
}
