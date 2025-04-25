import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:neon_apps_case/app/common/configs/enums/icons_enum.dart';
import 'package:neon_apps_case/app/common/configs/theme/i_app_theme.dart';
import 'package:neon_apps_case/app/common/router/app_router.dart';
import 'package:neon_apps_case/injection.dart';
import 'package:penta_core/penta_core.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppbar({
    required this.title,
    this.isBackButtonVisible = false,
    super.key,
  });

  final String title;
  final bool isBackButtonVisible;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      systemOverlayStyle:
          context.ext.theme.isDark
              ? SystemUiOverlayStyle.light
              : SystemUiOverlayStyle.dark,
      toolbarHeight: 80,
      title: Text(title),
      leadingWidth: 63,
      leading:
          isBackButtonVisible
              ? IconButton(
                icon: IconsEnum.btnBack.toAssetImage(
                  color:
                      context.appThemeExt.appColors.background
                          .byBrightness(context.ext.theme.isDark)
                          .onColor,
                ),
                onPressed: () {
                  Injection.I.read<AppRouter>().pop();
                },
              )
              : null,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(80);
}
