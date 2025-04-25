import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:neon_apps_case/app/common/configs/app_strings.dart';
import 'package:neon_apps_case/app/common/configs/enums/lotties_enum.dart';
import 'package:neon_apps_case/app/common/configs/theme/i_app_theme.dart';
import 'package:neon_apps_case/app/common/router/app_router.dart';
import 'package:neon_apps_case/injection.dart';
import 'package:penta_core/penta_core.dart';

class LoadingDialog extends StatefulWidget {
  const LoadingDialog._({required this.future});

  final Future<void> Function(bool Function() isCancelled) future;

  static Future<void> showLoadingDialog(
    Future<void> Function(bool Function() isCancelled) future,
  ) async {
    final context = Injection.I.read<AppRouter>().navigatorKey.currentContext;
    if (context == null) return;
    return showDialog(
      context: context,
      barrierDismissible: false,
      useSafeArea: false,
      builder: (_) => LoadingDialog._(future: future),
    );
  }

  @override
  State<LoadingDialog> createState() => _LoadingDialogState();
}

class _LoadingDialogState extends State<LoadingDialog> {
  bool _isCancelled = false;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      if (!mounted) return;
      await widget.future(() => _isCancelled);
    });
  }

  @override
  void dispose() {
    _isCancelled = true;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Dialog.fullscreen(
      backgroundColor: context.appThemeExt.appColors.background.byBrightness(
        context.ext.theme.isDark,
      ),
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ColorFiltered(
              colorFilter: ColorFilter.mode(
                context.appThemeExt.appColors.background
                    .byBrightness(context.ext.theme.isDark)
                    .onColor,
                BlendMode.srcATop,
              ),
              child: Lottie.asset(
                LottiesEnum.loading.path,
                width: 60,
                height: 60,
              ),
            ),
            AppValues.xl.ext.sizedBox.vertical,
            Text(
              AppStrings.loadingMessage,
              style: context.ext.theme.textTheme.bodyMedium?.copyWith(),
            ),
          ],
        ),
      ),
    );
  }
}
