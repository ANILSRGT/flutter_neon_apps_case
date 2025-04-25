part of '../see_all_view_imports.dart';

class _SeeAllViewBody extends StatelessWidget {
  const _SeeAllViewBody({required this.items});

  final List<MetObjectModel> items;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: ListView.separated(
        padding:
            AppValues.xl.ext.padding.horizontal +
            AppValues.xl3.ext.padding.directional.bottom,
        itemCount: items.length,
        separatorBuilder: (_, __) => AppValues.xl.ext.sizedBox.vertical,
        itemBuilder: (context, index) {
          final item = items[index];
          return MetArtworkCard(
            artwork: item,
            height: 300,
            contentPadding: AppValues.xl.value,
          );
        },
      ),
    );
  }
}
