part of '../collection_view_imports.dart';

class _CollectionViewSearch extends StatelessWidget {
  const _CollectionViewSearch();

  @override
  Widget build(BuildContext context) {
    return AppTextFormField.search(
      context: context,
      focusNode: FocusNode(),
      controller: TextEditingController(),
      onSearched: (newValue) async {
        context.read<CollectionViewCubit>().debouncer.call(newValue);
      },
    ).appWidgetExt.paddingSymmetric(horizontal: AppValues.xl.value);
  }
}
