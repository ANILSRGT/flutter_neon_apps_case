import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:neon_apps_case/app/common/configs/app_env.dart';
import 'package:neon_apps_case/app/common/router/app_router.dart';
import 'package:neon_apps_case/app/data/datasources/met_museum_local_datasource.dart';
import 'package:neon_apps_case/app/data/datasources/met_museum_remote_datasource.dart';
import 'package:neon_apps_case/app/data/repositories/met_museum_repo_impl.dart';
import 'package:neon_apps_case/app/domain/repositories/met_museum_repo.dart';

final class Injection {
  Injection._init();
  static final Injection _instance = Injection._init();
  static Injection get I => _instance;

  final _sl = GetIt.instance;
  final globalKey = GlobalKey<NavigatorState>();

  Future<void> init() async {
    final baseMetApiDio = Dio(
      BaseOptions(
        baseUrl: AppEnv.I.metMuseumApiUrl,
        connectTimeout: const Duration(seconds: 10),
        receiveTimeout: const Duration(seconds: 10),
        sendTimeout: const Duration(seconds: 10),
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        },
      ),
    );

    _sl
      ..registerLazySingleton<AppRouter>(AppRouter.new)
      ..registerFactory<MetMuseumRemoteDatasource>(
        () => MetMuseumRemoteDatasourceImpl(dio: baseMetApiDio),
      )
      ..registerFactory<MetMuseumLocalDataSource>(
        MetMuseumLocalDataSourceImpl.new,
      )
      ..registerFactory<MetMuseumRepo>(MetMuseumRepoImpl.new);
  }

  T read<T extends Object>() => _sl.get<T>();
}
