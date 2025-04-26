part of '../collection_view_imports.dart';

class _CollectionViewSearch extends StatelessWidget {
  const _CollectionViewSearch();

  @override
  Widget build(BuildContext context) {
    return AppTextFormField.search(
      context: context,
      controller: context.read<CollectionViewCubit>().searchController,
      focusNode: context.read<CollectionViewCubit>().searchFocusNode,
      onSearched: (newValue) async {
        await context.read<CollectionViewCubit>().searchCollection(
          query: newValue,
        );
      },
    ).appWidgetExt.paddingSymmetric(horizontal: AppValues.xl.value);
  }
}
