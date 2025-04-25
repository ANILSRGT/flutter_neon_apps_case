import 'package:flutter/material.dart';
import 'package:neon_apps_case/app/common/configs/app_strings.dart';
import 'package:neon_apps_case/app/common/configs/enums/departments_enum.dart';
import 'package:neon_apps_case/app/common/configs/theme/i_app_theme.dart';
import 'package:neon_apps_case/app/common/extensions/widget_ext.dart';
import 'package:neon_apps_case/app/common/widgets/card/app_card.dart';
import 'package:neon_apps_case/app/domain/models/department_model.dart';
import 'package:penta_core/penta_core.dart';
import 'package:shimmer/shimmer.dart';

class MetDepartmentCard extends StatelessWidget {
  const MetDepartmentCard({
    required this.departmentModel,
    super.key,
    this.height = 220,
    this.width = 165,
  });

  final DepartmentModel departmentModel;
  final double height;
  final double width;

  static Widget shimmer({double height = 220, double width = 165}) {
    return _MetDepartmentCardShimmer(height: height, width: width);
  }

  @override
  Widget build(BuildContext context) {
    return AppCard(
      width: width,
      height: height,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: DecoratedBox(
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: context.appThemeExt.appColors.grey.light.withValues(
                      alpha: 0.2,
                    ),
                    width: 0.5,
                  ),
                ),
              ),
              child:
                  departmentModel.departmentId == null
                      ? const Icon(Icons.photo_library_rounded)
                      : DepartmentsEnum.fromId(
                            departmentModel.departmentId!,
                          )?.image.toAssetImage(fit: BoxFit.cover) ??
                          const Icon(Icons.photo_library_rounded),
            ),
          ),
          AppValues.md.ext.sizedBox.vertical,
          SizedBox(
            height: 40,
            width: double.infinity,
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                departmentModel.displayName.ext.validation.isNullOrEmpty
                    ? AppStrings.unknown
                    : departmentModel.displayName!,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: context.ext.theme.textTheme.titleMedium?.copyWith(
                  color:
                      context.appThemeExt.appColors.isabelline
                          .byBrightness(context.ext.theme.isDark)
                          .onColor,
                  fontWeight: FontWeight.w500,
                ),
              ).appWidgetExt.paddingSymmetric(horizontal: AppValues.md.value),
            ),
          ),
        ],
      ).appWidgetExt.paddingOnly(bottom: AppValues.md.value),
    );
  }
}

class _MetDepartmentCardShimmer extends StatelessWidget {
  const _MetDepartmentCardShimmer({required this.height, required this.width});

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return AppCard(
      width: width,
      height: height,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: DecoratedBox(
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: context.appThemeExt.appColors.grey.light.withValues(
                      alpha: 0.2,
                    ),
                    width: 0.5,
                  ),
                ),
              ),
              child: Shimmer.fromColors(
                baseColor: context.appThemeExt.appColors.grey.light.withValues(
                  alpha: 0.2,
                ),
                highlightColor: context.appThemeExt.appColors.grey.light
                    .withValues(alpha: 0.1),
                child: Container(
                  color: context.appThemeExt.appColors.grey.light.withValues(
                    alpha: 0.2,
                  ),
                ),
              ),
            ),
          ),
          AppValues.md.ext.sizedBox.vertical,
          SizedBox(
            height: 40,
            width: double.infinity,
            child: Align(
              alignment: Alignment.centerLeft,
              child: Shimmer.fromColors(
                baseColor: context.appThemeExt.appColors.grey.light.withValues(
                  alpha: 0.2,
                ),
                highlightColor: context.appThemeExt.appColors.grey.light
                    .withValues(alpha: 0.1),
                child: Container(
                  color: context.appThemeExt.appColors.grey.light.withValues(
                    alpha: 0.2,
                  ),
                ),
              ).appWidgetExt.paddingSymmetric(horizontal: AppValues.md.value),
            ),
          ),
        ],
      ).appWidgetExt.paddingOnly(bottom: AppValues.md.value),
    );
  }
}
