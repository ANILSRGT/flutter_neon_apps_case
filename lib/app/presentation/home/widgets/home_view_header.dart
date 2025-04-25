part of '../home_view_imports.dart';

class _HomeViewHeader extends StatelessWidget {
  const _HomeViewHeader();

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        maxHeight: context.ext.screen.byOrientation(
          portrait: double.infinity,
          landscape: 250,
        ),
      ),
      child: Stack(
        children: [
          ImagesEnum.imgHome1.toAssetImage(
            width: context.ext.screen.width,
            fit: BoxFit.fitWidth,
          ),
          Positioned(
            bottom: 20,
            left: 20,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: AppValues.sm.value,
              children: [
                Text(
                  AppStrings.homeWelcomeMessage,
                  style: context.ext.theme.textTheme.displayMedium?.copyWith(
                    fontWeight: FontWeight.w500,
                    color: context.appThemeExt.appColors.white.light,
                  ),
                ),
                AppButton.normal(
                  onPressed: () => context.read<MainViewCubit>().changePage(1),
                  text: AppStrings.homeExploreCollectionButton,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
