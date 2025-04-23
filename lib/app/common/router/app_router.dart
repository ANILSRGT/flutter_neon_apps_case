import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:neon_apps_case/app/data/models/met_object_model.dart';
import 'package:neon_apps_case/app/presentation/artwork_details/artwork_details_view_imports.dart';
import 'package:neon_apps_case/app/presentation/collection/collection_view_imports.dart';
import 'package:neon_apps_case/app/presentation/home/home_view_imports.dart';
import 'package:neon_apps_case/app/presentation/info/info_view_imports.dart';
import 'package:neon_apps_case/app/presentation/main/main_view_imports.dart';
import 'package:neon_apps_case/app/presentation/search_collection/search_collection_view_imports.dart';
import 'package:neon_apps_case/app/presentation/see_all/see_all_view_imports.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'View,Route')
class AppRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType => RouteType.custom(
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return FadeTransition(opacity: animation, child: child);
    },
  );

  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: MainRoute.page, initial: true),
    AutoRoute(page: HomeRoute.page),
    AutoRoute(page: CollectionRoute.page),
    AutoRoute(page: InfoRoute.page),
    AutoRoute(page: SeeAllRoute.page),
    AutoRoute(page: SearchCollectionRoute.page),
    AutoRoute(page: ArtworkDetailsRoute.page),
  ];

  @override
  List<AutoRouteGuard> get guards => [];
}
