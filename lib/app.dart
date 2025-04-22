part of 'main.dart';

class _MyApp extends StatefulWidget {
  const _MyApp();

  @override
  State<_MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<_MyApp> with WidgetsBindingObserver {
  void _connectivityChanged(bool hasConnection) {
    if (!hasConnection) {
      showToast(
        'No internet connection',
        backgroundColor: const Color(0xFFA80B00),
        textStyle: const TextStyle(color: Color(0xFFFBFBFB)),
      );
    }
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ConnectivityService.connectionStream.listen(_connectivityChanged);
    });
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void didChangePlatformBrightness() {
    super.didChangePlatformBrightness();

    context.read<ThemeCubit>().updateSystemThemeMode();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final themeCubit = context.watch<ThemeCubit>();
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: themeCubit.state.currentTheme.theme.getThemeData(false),
      darkTheme: themeCubit.state.currentTheme.theme.getThemeData(true),
      themeMode: themeCubit.state.themeMode,
      key: Injection.I.globalKey,
      builder: (ctx, child) {
        return MediaQuery.withNoTextScaling(
          child: OKToast(
            backgroundColor: context.appThemeExt.appColorsRead.grey
                .byBrightness(context.ext.theme.isDark),
            textStyle: context.ext.theme.textTheme.bodyMedium?.copyWith(
              color:
                  context.appThemeExt.appColorsRead.grey
                      .byBrightness(context.ext.theme.isDark)
                      .onColor,
            ),
            radius: 8,
            textPadding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 8,
            ),
            duration: const Duration(seconds: 2),
            position: ToastPosition.bottom,
            textAlign: TextAlign.center,
            animationCurve: Curves.easeInOut,
            animationDuration: const Duration(milliseconds: 300),
            dismissOtherOnShow: true,
            child: child!,
          ),
        );
      },
      routerConfig: Injection.I.read<AppRouter>().config(),
    );
  }
}
