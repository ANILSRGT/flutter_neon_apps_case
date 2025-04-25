part of 'home_cubit.dart';

class HomeState with EquatableMixin {
  const HomeState({
    this.exhibitionsArtworksIds,
    this.famousArtworksIds,
    this.exhibitionsArtworks = const {},
    this.famousArtworks = const {},
  });

  final List<int>? exhibitionsArtworksIds;
  final List<int>? famousArtworksIds;
  final Map<int, ResponseModel<MetObjectModel>> exhibitionsArtworks;
  final Map<int, ResponseModel<MetObjectModel>> famousArtworks;

  @override
  List<Object?> get props => [
    exhibitionsArtworksIds,
    famousArtworksIds,
    exhibitionsArtworks,
    famousArtworks,
  ];

  HomeState copyWith({
    ValueGetter<List<int>?>? exhibitionsArtworksIds,
    ValueGetter<List<int>?>? famousArtworksIds,
    Map<int, ResponseModel<MetObjectModel>> Function(
      Map<int, ResponseModel<MetObjectModel>>,
    )?
    exhibitionsArtworks,
    Map<int, ResponseModel<MetObjectModel>> Function(
      Map<int, ResponseModel<MetObjectModel>>,
    )?
    famousArtworks,
  }) {
    return HomeState(
      exhibitionsArtworksIds:
          exhibitionsArtworksIds != null
              ? exhibitionsArtworksIds()
              : this.exhibitionsArtworksIds,
      famousArtworksIds:
          famousArtworksIds != null
              ? famousArtworksIds()
              : this.famousArtworksIds,
      exhibitionsArtworks:
          exhibitionsArtworks != null
              ? exhibitionsArtworks(this.exhibitionsArtworks)
              : this.exhibitionsArtworks,
      famousArtworks:
          famousArtworks != null
              ? famousArtworks(this.famousArtworks)
              : this.famousArtworks,
    );
  }
}
