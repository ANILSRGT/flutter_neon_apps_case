part of '../collection_view_imports.dart';

class _CollectionViewBody extends StatelessWidget {
  const _CollectionViewBody();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Column(
          children: [
            const CustomAppbar(title: AppStrings.collectionTitle),
            Stack(
              children: [
                ImagesEnum.imgCollection01.toAssetImage(
                  fit: BoxFit.fitWidth,
                  width: double.infinity,
                ),
                Positioned.fill(
                  child: FittedBox(
                    child: Text(
                      AppStrings.collectionHeader,
                      textAlign: TextAlign.center,
                      style: context.ext.theme.textTheme.displaySmall?.copyWith(
                        color: context.appThemeExt.appColors.white.light,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ).appWidgetExt.paddingAll(20),
                ),
              ],
            ),
            AppValues.xl2.ext.sizedBox.vertical,
            AppTextFormField.search(
              context: context,
              focusNode: FocusNode(),
              controller: TextEditingController(),
              onSearched: (newValue) async {
                await LoadingDialog.showLoadingDialog(context, (ctx) async {
                  await Future.delayed(const Duration(seconds: 2), () {});
                  await Injection.I.read<AppRouter>().popAndPush(
                    const SearchCollectionRoute(),
                  );
                });
              },
            ).appWidgetExt.paddingSymmetric(horizontal: AppValues.xl.value),
            AppValues.xl2.ext.sizedBox.vertical,
            ListView.separated(
              itemCount: DepartmentsEnum.values.length,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              padding: AppValues.xl.ext.padding.horizontal,
              separatorBuilder: (_, __) => AppValues.xl2.ext.sizedBox.vertical,
              itemBuilder: (context, index) {
                return MetDepartmentCard(
                  width: double.infinity,
                  departmentModel: DepartmentModel(
                    departmentId: DepartmentsEnum.values[index].id,
                  ),
                );
              },
            ),
            AppValues.xl.ext.sizedBox.vertical,
          ],
        ),
      ),
    );
  }
}
