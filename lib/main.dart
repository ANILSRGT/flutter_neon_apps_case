import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:neon_apps_case/app/common/configs/theme/i_app_theme.dart';
import 'package:neon_apps_case/app/common/cubits/theme/theme_cubit.dart';
import 'package:neon_apps_case/app/common/injections/injection.dart';
import 'package:neon_apps_case/app/common/router/app_router.dart';
import 'package:oktoast/oktoast.dart';
import 'package:penta_core/penta_core.dart';

part 'app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Injection.I.init();

  runApp(
    MultiBlocProvider(
      providers: [BlocProvider<ThemeCubit>(create: (_) => ThemeCubit())],
      child: const _MyApp(),
    ),
  );
}
