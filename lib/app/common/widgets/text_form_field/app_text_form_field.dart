import 'package:flutter/material.dart';
import 'package:neon_apps_case/app/common/configs/app_strings.dart';
import 'package:neon_apps_case/app/common/configs/enums/icons_enum.dart';
import 'package:neon_apps_case/app/common/configs/theme/i_app_theme.dart';
import 'package:neon_apps_case/app/common/widgets/focus/focusable_widget.dart';
import 'package:penta_core/penta_core.dart';

class AppTextFormFieldData {
  const AppTextFormFieldData({
    required this.controller,
    required this.focusNode,
    required this.hintText,
    this.keyboardType = TextInputType.text,
    this.textInputAction = TextInputAction.next,
    this.suffixIcon,
    this.onSubmitted,
  });

  final TextEditingController controller;
  final FocusNode focusNode;
  final TextInputType keyboardType;
  final TextInputAction textInputAction;
  final String hintText;
  final FormFieldSetter<String>? onSubmitted;
  final Widget? suffixIcon;
}

class AppTextFormField extends StatelessWidget {
  const AppTextFormField._({required this.data});

  factory AppTextFormField.search({
    required BuildContext context,
    required TextEditingController controller,
    required FocusNode focusNode,
    required FormFieldSetter<String>? onSearched,
  }) {
    return AppTextFormField._(
      data: AppTextFormFieldData(
        focusNode: focusNode,
        controller: controller,
        hintText: AppStrings.search,
        textInputAction: TextInputAction.search,
        onSubmitted: onSearched,
        suffixIcon: IntrinsicHeight(
          child: DecoratedBox(
            decoration: BoxDecoration(
              border: Border(
                left: BorderSide(
                  color: context.appThemeExt.appColors.grey.byBrightness(
                    context.ext.theme.isDark,
                  ),
                ),
              ),
            ),
            child: SizedBox(
              height: double.infinity,
              child: GestureDetector(
                behavior: HitTestBehavior.translucent,
                onTap: () {
                  onSearched?.call(controller.text);
                },
                child: FocusableWidget(
                  focusNode: focusNode,
                  builder: (isFocused) {
                    return (isFocused
                            ? IconsEnum.btnSearchSelected
                            : IconsEnum.btnSearchUnselected)
                        .toAssetImage(width: 45, height: 45);
                  },
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  final AppTextFormFieldData data;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: data.controller,
      focusNode: data.focusNode,
      onTapOutside: (_) => FocusScope.of(context).unfocus(),
      keyboardType: data.keyboardType,
      textInputAction: data.textInputAction,
      onFieldSubmitted: data.onSubmitted,
      decoration: InputDecoration(
        isDense: true,
        hintText: data.hintText,
        border: OutlineInputBorder(
          borderRadius: AppValues.xs.ext.radius.border.all,
          borderSide: BorderSide(
            color: context.appThemeExt.appColors.grey.byBrightness(
              context.ext.theme.isDark,
            ),
          ),
        ),
        suffixIconConstraints: const BoxConstraints(),
        suffixIcon: data.suffixIcon,
      ),
    );
  }
}
