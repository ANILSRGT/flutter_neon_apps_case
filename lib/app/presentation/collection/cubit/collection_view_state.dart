part of 'collection_view_cubit.dart';

class CollectionViewState with EquatableMixin {
  const CollectionViewState({this.departments});

  final List<DepartmentModel>? departments;

  @override
  List<Object?> get props => [departments];

  CollectionViewState copyWith({
    ValueGetter<List<DepartmentModel>?>? departments,
  }) {
    return CollectionViewState(
      departments: departments != null ? departments() : this.departments,
    );
  }
}
