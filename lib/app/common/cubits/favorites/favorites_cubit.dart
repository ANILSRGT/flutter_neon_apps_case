import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:neon_apps_case/app/common/cache/object_box.dart';
import 'package:neon_apps_case/app/domain/models/met_object_model.dart';
import 'package:neon_apps_case/injection.dart';

part 'favorites_state.dart';

class FavoritesCubit extends Cubit<FavoritesState> {
  FavoritesCubit() : super(const FavoritesState());

  void fetchFavorites() {
    final favorites = Injection.I.read<ObjectBox>().getFavoriteArtworks();
    emit(state.copyWith(favorites: (_) => favorites));
  }

  void toggleFavorite(MetObjectModel artwork) {
    Injection.I.read<ObjectBox>().toggleArtworkFavorites(artwork);
    final favorites = Injection.I.read<ObjectBox>().getFavoriteArtworks();
    emit(state.copyWith(favorites: (_) => favorites));
  }
}
