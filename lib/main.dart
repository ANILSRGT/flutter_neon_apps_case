import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:neon_apps_case/app/common/cache/object_box.dart';
import 'package:neon_apps_case/app/common/configs/app_env.dart';
import 'package:neon_apps_case/app/common/configs/theme/i_app_theme.dart';
import 'package:neon_apps_case/app/common/cubits/favorites/favorites_cubit.dart';
import 'package:neon_apps_case/app/common/cubits/theme/theme_cubit.dart';
import 'package:neon_apps_case/app/common/router/app_router.dart';
import 'package:neon_apps_case/app/common/services/daily_artwork_notification_service.dart';
import 'package:neon_apps_case/app/common/services/notification_service.dart';
import 'package:neon_apps_case/app/presentation/main/cubit/main_view_cubit.dart';
import 'package:neon_apps_case/injection.dart';
import 'package:oktoast/oktoast.dart';
import 'package:penta_core/penta_core.dart';

part 'app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await NotificationService.I.init();
  await AppEnv.I.init();
  await Injection.I.init();
  await Injection.I.read<ObjectBox>().init();
  unawaited(DailyArtworkNotificationService.I.showDailyArtworkNotification());

  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider<ThemeCubit>(create: (_) => ThemeCubit()),
        BlocProvider<MainViewCubit>(create: (_) => MainViewCubit()),
        BlocProvider<FavoritesCubit>(
          create: (_) => FavoritesCubit()..fetchFavorites(),
        ),
      ],
      child: const _MyApp(),
    ),
  );
}
