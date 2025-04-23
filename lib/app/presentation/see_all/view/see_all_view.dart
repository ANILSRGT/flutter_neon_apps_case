part of '../see_all_view_imports.dart';

@RoutePage()
class SeeAllView extends StatelessWidget {
  const SeeAllView({required this.title, required this.items, super.key});

  final String title;
  final List<MetObjectModel> items;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(title: title),
      body: ListView.separated(
        padding: AppValues.xl.ext.padding.horizontal,
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
