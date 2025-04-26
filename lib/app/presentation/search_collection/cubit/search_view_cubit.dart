import 'dart:async';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:neon_apps_case/app/domain/models/met_object_model.dart';
import 'package:neon_apps_case/app/domain/repositories/met_museum_repo.dart';
import 'package:neon_apps_case/injection.dart';
import 'package:oktoast/oktoast.dart';
import 'package:penta_core/penta_core.dart';

part 'search_view_state.dart';

class SearchViewCubit extends Cubit<SearchViewState> {
  SearchViewCubit({required List<int> artworksIds})
    : super(SearchViewState(artworksIds: artworksIds));

  final ScrollController scrollController = ScrollController();
  final TextEditingController searchController = TextEditingController();
  final FocusNode searchFocusNode = FocusNode();
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

  Future<void> search(String query) async {
    if (query.isEmpty) return;
    searchController.clear();
    final oldData = state.artworksIds;

    emit(state.copyWith(artworksIds: () => null, maxArtworks: 0));
    final res = await Injection.I.read<MetMuseumRepo>().searchArtworks(
      query: query,
    );
    if (isClosed) return;
    if (res.isFail) {
      showToast(res.asFail.error.message);
      emit(state.copyWith(artworksIds: () => oldData));
      return;
    }
    final artworks = res.asSuccess.data;
    emit(
      state.copyWith(
        artworksIds: () => artworks.objectIDs ?? oldData,
        maxArtworks: 8,
      ),
    );
    unawaited(nextFetch());
  }
}
