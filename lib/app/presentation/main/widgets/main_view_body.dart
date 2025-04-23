part of '../main_view_imports.dart';

class _MainViewBody extends StatelessWidget {
  const _MainViewBody();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MainViewCubit, MainViewState>(
      builder: (context, state) {
        return IndexedStack(
          index: state.currentIndex,
          children: const [HomeView(), CollectionView(), InfoView()],
        );
      },
    );
  }
}
