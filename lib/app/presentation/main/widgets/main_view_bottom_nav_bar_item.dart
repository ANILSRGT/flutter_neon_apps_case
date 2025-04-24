part of '../main_view_imports.dart';

class _MainViewBottomNavBarItem extends StatelessWidget {
  const _MainViewBottomNavBarItem({
    required this.index,
    required this.icon,
    this.label,
  });

  final int index;
  final Widget Function(bool isSelected) icon;
  final String Function(bool isSelected)? label;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () {
        context.read<MainViewCubit>().changePage(index);
      },
      child: BlocBuilder<MainViewCubit, MainViewState>(
        builder: (context, state) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: AppValues.xs.value / 2,
            children: [
              Expanded(child: icon(state.currentIndex == index)),
              if (label != null)
                Text(
                  label!(state.currentIndex == index),
                  style: context.ext.theme.textTheme.bodyLarge?.copyWith(
                    fontWeight: FontWeight.w500,
                    color:
                        state.currentIndex == index
                            ? context.appThemeExt.appColors.primary
                            : context.appThemeExt.appColors.grey.light,
                  ),
                ),
            ],
          );
        },
      ),
    );
  }
}
