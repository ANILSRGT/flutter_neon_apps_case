import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:neon_apps_case/app/common/configs/app_strings.dart';
import 'package:neon_apps_case/app/common/configs/enums/departments_enum.dart';
import 'package:neon_apps_case/app/common/configs/enums/images_enum.dart';
import 'package:neon_apps_case/app/common/configs/theme/i_app_theme.dart';
import 'package:neon_apps_case/app/common/extensions/widget_ext.dart';
import 'package:neon_apps_case/app/common/router/app_router.dart';
import 'package:neon_apps_case/app/common/widgets/appbar/custom_appbar.dart';
import 'package:neon_apps_case/app/common/widgets/card/met_department_card.dart';
import 'package:neon_apps_case/app/common/widgets/dialogs/loading_dialog.dart';
import 'package:neon_apps_case/app/common/widgets/text_form_field/app_text_form_field.dart';
import 'package:neon_apps_case/app/domain/models/department_model.dart';
import 'package:neon_apps_case/injection.dart';
import 'package:penta_core/penta_core.dart';

part 'view/collection_view.dart';
part 'widgets/collection_view_body.dart';
