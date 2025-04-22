import 'package:neon_apps_case/app/common/configs/theme/i_app_theme.dart';
import 'package:neon_apps_case/app/common/configs/theme/themes/main/main_theme.dart';

enum AppThemesEnum {
  main();

  IAppTheme get theme {
    return switch (this) {
      AppThemesEnum.main => MainTheme(),
    };
  }
}
