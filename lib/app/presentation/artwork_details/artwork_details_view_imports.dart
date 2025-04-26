import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:neon_apps_case/app/common/configs/app_strings.dart';
import 'package:neon_apps_case/app/common/configs/theme/i_app_theme.dart';
import 'package:neon_apps_case/app/common/cubits/favorites/favorites_cubit.dart';
import 'package:neon_apps_case/app/common/extensions/widget_ext.dart';
import 'package:neon_apps_case/app/common/widgets/appbar/custom_appbar.dart';
import 'package:neon_apps_case/app/common/widgets/image/app_image.dart';
import 'package:neon_apps_case/app/common/widgets/text/detail_text.dart';
import 'package:neon_apps_case/app/domain/models/met_object_model.dart';
import 'package:penta_core/penta_core.dart';

part 'view/artwork_details_view.dart';
part 'widgets/artwork_details_view_body.dart';
part 'widgets/artwork_details_view_image.dart';
part 'widgets/artwork_details_view_header.dart';
part 'widgets/artwork_details_view_details.dart';
