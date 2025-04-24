import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:neon_apps_case/app/domain/models/met_object_model.dart';
import 'package:neon_apps_case/app/domain/repositories/met_museum_repo.dart';
import 'package:neon_apps_case/injection.dart';
import 'package:oktoast/oktoast.dart';

part 'search_view_state.dart';

class SearchViewCubit extends Cubit<SearchViewState> {
  SearchViewCubit({required List<MetObjectModel> initialData})
    : super(SearchViewState(artworks: initialData));

  Future<void> search(String query) async {
    final oldData = state.artworks;
    if (query.isEmpty) return;

    emit(state.copyWith(artworks: () => null));
    final res = await Injection.I.read<MetMuseumRepo>().searchArtworks(
      query: query,
    );
    if (res.isFail) {
      showToast(res.asFail.error.message);
      emit(state.copyWith(artworks: () => oldData));
      return;
    }
    final artworks = res.asSuccess.data;
    emit(state.copyWith(artworks: () => artworks));
  }
}
