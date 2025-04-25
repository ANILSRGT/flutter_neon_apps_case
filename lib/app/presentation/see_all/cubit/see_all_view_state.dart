part of 'see_all_view_cubit.dart';

class SeeAllViewState extends Equatable {
  const SeeAllViewState({
    this.artworksIds,
    this.artworks = const {},
    this.maxArtworks = 0,
  });

  final List<int>? artworksIds;
  final Map<int, ResponseModel<MetObjectModel>> artworks;
  final int maxArtworks;

  @override
  List<Object?> get props => [artworksIds, artworks, maxArtworks];

  SeeAllViewState copyWith({
    ValueGetter<List<int>?>? artworksIds,
    Map<int, ResponseModel<MetObjectModel>> Function(
      Map<int, ResponseModel<MetObjectModel>>,
    )?
    artworks,
    int? maxArtworks,
  }) {
    return SeeAllViewState(
      artworksIds: artworksIds != null ? artworksIds() : this.artworksIds,
      artworks: artworks != null ? artworks(this.artworks) : this.artworks,
      maxArtworks: maxArtworks ?? this.maxArtworks,
    );
  }
}
