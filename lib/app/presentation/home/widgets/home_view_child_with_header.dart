part of '../home_view_imports.dart';

class _HomeViewChildWithHeader extends StatelessWidget {
  const _HomeViewChildWithHeader({
    required this.header,
    required this.child,
    required this.onSeeAllTap,
  });

  final String header;
  final Widget child;
  final VoidCallback? onSeeAllTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        AppValues.xl2.ext.sizedBox.vertical,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          spacing: AppValues.sm.value,
          children: [
            HeaderText(text: header),
            GestureDetector(
              onTap: onSeeAllTap,
              behavior: HitTestBehavior.translucent,
              child: Row(
                children: [
                  Text(
                    'See all',
                    style: context.ext.theme.textTheme.bodyLarge?.copyWith(
                      color: context.appThemeExt.appColors.grey.light,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  IconsEnum.imgForward.toAssetImage(),
                ],
              ),
            ),
          ],
        ).appWidgetExt.paddingSymmetric(horizontal: AppValues.xl.value),
        AppValues.xl2.ext.sizedBox.vertical,
        child,
      ],
    );
  }
}
