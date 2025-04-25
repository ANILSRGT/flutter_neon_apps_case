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
            const _CollectionViewHeader(),
            AppValues.xl2.ext.sizedBox.vertical,
            const _CollectionViewSearch(),
            AppValues.xl2.ext.sizedBox.vertical,
            const _CollectionViewDepartments(),
            AppValues.xl.ext.sizedBox.vertical,
          ],
        ),
      ),
    );
  }
}
