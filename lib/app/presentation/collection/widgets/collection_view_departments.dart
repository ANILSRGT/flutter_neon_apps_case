part of '../collection_view_imports.dart';

class _CollectionViewDepartments extends StatelessWidget {
  const _CollectionViewDepartments();

  @override
  Widget build(BuildContext context) {
    final departments = context.watch<CollectionViewCubit>().state.departments;
    return ListView.separated(
      itemCount: departments?.length ?? 3,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: AppValues.xl.ext.padding.horizontal,
      separatorBuilder: (_, __) => AppValues.xl2.ext.sizedBox.vertical,
      itemBuilder: (context, index) {
        final department = departments?[index];
        if (department == null) {
          return MetDepartmentCard.shimmer(width: double.infinity);
        }
        return GestureDetector(
          onTap: () {
            context.read<CollectionViewCubit>().searchCollection(
              query: department.displayName,
              departmentId: department.departmentId,
            );
          },
          child: MetDepartmentCard(
            width: double.infinity,
            departmentModel: department,
          ),
        );
      },
    );
  }
}
