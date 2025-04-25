part of '../info_view_imports.dart';

class _InfoViewBody extends StatelessWidget {
  const _InfoViewBody();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Column(
          children: [
            const CustomAppbar(title: AppStrings.infoTitle),
            const _InfoViewHeader(),
            AppValues.xl2.ext.sizedBox.vertical,
            const _InfoViewLocationsAndHours(),
            AppValues.xl.ext.sizedBox.vertical,
          ],
        ),
      ),
    );
  }
}
