import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:neon_apps_case/app/domain/models/met_object_model.dart';
import 'package:neon_apps_case/app/domain/repositories/met_museum_repo.dart';
import 'package:neon_apps_case/injection.dart';
import 'package:penta_core/penta_core.dart';

part 'see_all_view_state.dart';

class SeeAllViewCubit extends Cubit<SeeAllViewState> {
  SeeAllViewCubit({required List<int> artworksIds})
    : super(SeeAllViewState(artworksIds: artworksIds));

  final ScrollController scrollController = ScrollController();
  final int _batchSize = 8;

  void init() {
    nextFetch();
    scrollController.addListener(() {
      if (scrollController.position.pixels >=
          scrollController.position.maxScrollExtent) {
        nextFetch();
      }
    });
  }

  Future<void> _fetchArtworkById(int id) async {
    if (state.artworks.containsKey(id) && state.artworks[id]!.isSuccess) {
      return;
    }
    final res = await Injection.I.read<MetMuseumRepo>().getArtworkById(id: id);
    if (isClosed) return;
    emit(
      state.copyWith(
        artworks: (prev) {
          final newData = Map<int, ResponseModel<MetObjectModel>>.from(prev);
          newData[id] = res;
          return newData;
        },
      ),
    );
  }

  Future<void> nextFetch() async {
    if (state.artworksIds == null) return;
    final artworksIds = state.artworksIds!;
    final startIndex = state.artworks.length;
    if (startIndex >= artworksIds.length) return;
    final endIndex =
        startIndex + _batchSize > artworksIds.length
            ? artworksIds.length
            : startIndex + _batchSize;
    final idsToFetch = artworksIds.sublist(startIndex, endIndex);
    emit(state.copyWith(maxArtworks: endIndex));
    for (final id in idsToFetch) {
      unawaited(_fetchArtworkById(id));
    }
  }
}
