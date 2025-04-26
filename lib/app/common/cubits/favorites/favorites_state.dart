part of 'favorites_cubit.dart';

class FavoritesState with EquatableMixin {
  const FavoritesState({this.favorites = const <MetObjectModel>[]});

  final List<MetObjectModel> favorites;

  @override
  List<Object?> get props => [favorites];

  FavoritesState copyWith({
    List<MetObjectModel> Function(List<MetObjectModel>)? favorites,
  }) {
    return FavoritesState(
      favorites: favorites != null ? favorites(this.favorites) : this.favorites,
    );
  }
}
