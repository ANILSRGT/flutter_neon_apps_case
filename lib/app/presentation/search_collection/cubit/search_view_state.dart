part of 'search_view_cubit.dart';

class SearchViewState with EquatableMixin {
  const SearchViewState({
    required this.artworksIds,
    this.artworks = const {},
    this.maxArtworks = 0,
  });

  final List<int>? artworksIds;
  final Map<int, ResponseModel<MetObjectModel>> artworks;
  final int maxArtworks;

  @override
  List<Object?> get props => [artworksIds, artworks, maxArtworks];

  SearchViewState copyWith({
    ValueGetter<List<int>?>? artworksIds,
    Map<int, ResponseModel<MetObjectModel>> Function(
      Map<int, ResponseModel<MetObjectModel>>,
    )?
    artworks,
    int? maxArtworks,
  }) {
    return SearchViewState(
      artworksIds: artworksIds != null ? artworksIds() : this.artworksIds,
      artworks: artworks != null ? artworks(this.artworks) : this.artworks,
      maxArtworks: maxArtworks ?? this.maxArtworks,
    );
  }
}
