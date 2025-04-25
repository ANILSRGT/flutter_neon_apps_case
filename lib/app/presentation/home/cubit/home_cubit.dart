import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:neon_apps_case/app/domain/models/met_object_model.dart';
import 'package:neon_apps_case/app/domain/repositories/met_museum_repo.dart';
import 'package:neon_apps_case/injection.dart';
import 'package:penta_core/penta_core.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(const HomeState());

  Future<void> init() async {
    await _fetchExhibitionsArtworksIds();
    await _fetchFamousArtworksIds();
    if (state.exhibitionsArtworksIds != null) {
      final artworksIds = state.exhibitionsArtworksIds!;
      final idsToFetch = artworksIds.take(6);
      for (final id in idsToFetch) {
        unawaited(_fetchArtworkByIdForExhibitions(id));
      }
    }
    if (state.famousArtworksIds != null) {
      final artworksIds = state.famousArtworksIds!;
      final idsToFetch = artworksIds.take(6);
      for (final id in idsToFetch) {
        unawaited(_fetchArtworkByIdForFamous(id));
      }
    }
  }

  Future<void> _fetchExhibitionsArtworksIds() async {
    if (state.exhibitionsArtworksIds != null) return;
    final res = await Injection.I.read<MetMuseumRepo>().searchArtworks(
      query: 'Current%20Exhibitions',
    );
    if (isClosed) return;
    if (res.isFail || res.asSuccess.data.objectIDs == null) {
      emit(state.copyWith(exhibitionsArtworksIds: () => []));
      return;
    }
    final ids = res.asSuccess.data.objectIDs!;
    emit(state.copyWith(exhibitionsArtworksIds: () => ids));
  }

  Future<void> _fetchFamousArtworksIds() async {
    if (state.famousArtworksIds != null) return;
    final res = await Injection.I.read<MetMuseumRepo>().searchArtworks(
      query: 'Famous%20Artworks',
    );
    if (isClosed) return;
    if (res.isFail || res.asSuccess.data.objectIDs == null) {
      emit(state.copyWith(famousArtworksIds: () => []));
      return;
    }
    final ids = res.asSuccess.data.objectIDs!;
    emit(state.copyWith(famousArtworksIds: () => ids));
  }

  Future<void> _fetchArtworkByIdForExhibitions(int id) async {
    if (state.exhibitionsArtworks.containsKey(id) &&
        state.exhibitionsArtworks[id]!.isSuccess) {
      return;
    }
    final res = await Injection.I.read<MetMuseumRepo>().getArtworkById(id: id);
    if (isClosed) return;
    emit(
      state.copyWith(
        exhibitionsArtworks: (prev) {
          final newData = Map<int, ResponseModel<MetObjectModel>>.from(prev);
          newData[id] = res;
          return newData;
        },
      ),
    );
  }

  Future<void> _fetchArtworkByIdForFamous(int id) async {
    if (state.famousArtworks.containsKey(id) &&
        state.famousArtworks[id]!.isSuccess) {
      return;
    }
    final res = await Injection.I.read<MetMuseumRepo>().getArtworkById(id: id);
    if (isClosed) return;
    emit(
      state.copyWith(
        famousArtworks: (prev) {
          final newData = Map<int, ResponseModel<MetObjectModel>>.from(prev);
          newData[id] = res;
          return newData;
        },
      ),
    );
  }
}
