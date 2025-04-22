import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:neon_apps_case/app/common/router/app_router.dart';

final class Injection {
  Injection._init();
  static final Injection _instance = Injection._init();
  static Injection get I => _instance;

  final _sl = GetIt.instance;
  final globalKey = GlobalKey<NavigatorState>();

  Future<void> init() async {
    _sl.registerLazySingleton<AppRouter>(AppRouter.new);
  }

  T read<T extends Object>() => _sl.get<T>();
}
