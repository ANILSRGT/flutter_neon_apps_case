part of 'search_view_cubit.dart';

class SearchViewState with EquatableMixin {
  const SearchViewState({this.artworks});

  final List<MetObjectModel>? artworks;

  @override
  List<Object?> get props => [artworks];

  SearchViewState copyWith({ValueGetter<List<MetObjectModel>?>? artworks}) {
    return SearchViewState(
      artworks: artworks != null ? artworks() : this.artworks,
    );
  }
}
