// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

/// generated route for
/// [ArtworkDetailsView]
class ArtworkDetailsRoute extends PageRouteInfo<ArtworkDetailsRouteArgs> {
  ArtworkDetailsRoute({
    required MetObjectModel artwork,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
         ArtworkDetailsRoute.name,
         args: ArtworkDetailsRouteArgs(artwork: artwork, key: key),
         initialChildren: children,
       );

  static const String name = 'ArtworkDetailsRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ArtworkDetailsRouteArgs>();
      return ArtworkDetailsView(artwork: args.artwork, key: args.key);
    },
  );
}

class ArtworkDetailsRouteArgs {
  const ArtworkDetailsRouteArgs({required this.artwork, this.key});

  final MetObjectModel artwork;

  final Key? key;

  @override
  String toString() {
    return 'ArtworkDetailsRouteArgs{artwork: $artwork, key: $key}';
  }
}

/// generated route for
/// [CollectionView]
class CollectionRoute extends PageRouteInfo<void> {
  const CollectionRoute({List<PageRouteInfo>? children})
    : super(CollectionRoute.name, initialChildren: children);

  static const String name = 'CollectionRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const CollectionView();
    },
  );
}

/// generated route for
/// [HomeView]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
    : super(HomeRoute.name, initialChildren: children);

  static const String name = 'HomeRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const HomeView();
    },
  );
}

/// generated route for
/// [InfoView]
class InfoRoute extends PageRouteInfo<void> {
  const InfoRoute({List<PageRouteInfo>? children})
    : super(InfoRoute.name, initialChildren: children);

  static const String name = 'InfoRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const InfoView();
    },
  );
}

/// generated route for
/// [MainView]
class MainRoute extends PageRouteInfo<void> {
  const MainRoute({List<PageRouteInfo>? children})
    : super(MainRoute.name, initialChildren: children);

  static const String name = 'MainRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const MainView();
    },
  );
}

/// generated route for
/// [SearchCollectionView]
class SearchCollectionRoute extends PageRouteInfo<SearchCollectionRouteArgs> {
  SearchCollectionRoute({
    required List<MetObjectModel> artworks,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
         SearchCollectionRoute.name,
         args: SearchCollectionRouteArgs(artworks: artworks, key: key),
         initialChildren: children,
       );

  static const String name = 'SearchCollectionRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<SearchCollectionRouteArgs>();
      return SearchCollectionView(artworks: args.artworks, key: args.key);
    },
  );
}

class SearchCollectionRouteArgs {
  const SearchCollectionRouteArgs({required this.artworks, this.key});

  final List<MetObjectModel> artworks;

  final Key? key;

  @override
  String toString() {
    return 'SearchCollectionRouteArgs{artworks: $artworks, key: $key}';
  }
}

/// generated route for
/// [SeeAllView]
class SeeAllRoute extends PageRouteInfo<SeeAllRouteArgs> {
  SeeAllRoute({
    required String title,
    required List<MetObjectModel> items,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
         SeeAllRoute.name,
         args: SeeAllRouteArgs(title: title, items: items, key: key),
         initialChildren: children,
       );

  static const String name = 'SeeAllRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<SeeAllRouteArgs>();
      return SeeAllView(title: args.title, items: args.items, key: args.key);
    },
  );
}

class SeeAllRouteArgs {
  const SeeAllRouteArgs({required this.title, required this.items, this.key});

  final String title;

  final List<MetObjectModel> items;

  final Key? key;

  @override
  String toString() {
    return 'SeeAllRouteArgs{title: $title, items: $items, key: $key}';
  }
}
