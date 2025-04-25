import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:neon_apps_case/app/common/router/app_router.dart';
import 'package:neon_apps_case/app/common/widgets/dialogs/loading_dialog.dart';
import 'package:neon_apps_case/app/domain/models/department_model.dart';
import 'package:neon_apps_case/app/domain/repositories/met_museum_repo.dart';
import 'package:neon_apps_case/injection.dart';
import 'package:oktoast/oktoast.dart';
import 'package:penta_core/penta_core.dart';

part 'collection_view_state.dart';

class CollectionViewCubit extends Cubit<CollectionViewState> {
  CollectionViewCubit() : super(const CollectionViewState());

  late final PentaDebounceable<void, String?> debouncer =
      PentaDebouncer.debounce(
        debounceDuration: const Duration(milliseconds: 500),
        function: (query) async {
          if (query == null || query.isEmpty) return;
          await searchCollection(query: query);
        },
      );

  Future<void> searchCollection({String? query, int? departmentId}) async {
    if ((query == null || query.isEmpty) && departmentId == null) return;

    await LoadingDialog.showLoadingDialog((isCancelled) async {
      if (isCancelled()) return;
      final res = await Injection.I.read<MetMuseumRepo>().searchArtworks(
        query: query,
        departmentId: departmentId,
      );
      if (isCancelled()) return;
      if (res.isFail) {
        showToast(res.asFail.error.message);
        Injection.I.read<AppRouter>().pop();
        return;
      }
      final artworksIds = res.asSuccess.data.objectIDs;
      if (artworksIds == null || artworksIds.isEmpty) {
        showToast('No artworks found!');
        Injection.I.read<AppRouter>().pop();
        return;
      }
      await Injection.I.read<AppRouter>().popAndPush(
        SearchCollectionRoute(artworksIds: artworksIds),
      );
    });
  }

  Future<void> fetchDepartments() async {
    final res = await Injection.I.read<MetMuseumRepo>().getDepartments();
    if (res.isFail) {
      showToast(res.asFail.error.message);
      return;
    }

    final departments = res.asSuccess.data;
    if (departments.isEmpty) {
      showToast('No departments found.');
      return;
    }

    emit(state.copyWith(departments: () => departments));
  }
}
