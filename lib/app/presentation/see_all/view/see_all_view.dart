part of '../see_all_view_imports.dart';

@RoutePage()
class SeeAllView extends StatelessWidget {
  const SeeAllView({required this.title, required this.items, super.key});

  final String title;
  final List<MetObjectModel> items;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(isBackButtonVisible: true, title: title),
      body: _SeeAllViewBody(items: items),
    );
  }
}
