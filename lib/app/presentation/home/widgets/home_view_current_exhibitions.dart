part of '../home_view_imports.dart';

class _HomeViewCurrentExhibitions extends StatelessWidget {
  const _HomeViewCurrentExhibitions();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: 3,
        padding: AppValues.xl2.ext.padding.horizontal,
        separatorBuilder: (_, __) => AppValues.xl2.ext.sizedBox.horizontal,
        itemBuilder: (_, index) {
          return const AppCard(width: 200);
        },
      ),
    );
  }
}
