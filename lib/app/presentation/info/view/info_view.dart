part of '../info_view_imports.dart';

@RoutePage()
class InfoView extends StatelessWidget {
  const InfoView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: _InfoViewBody());
  }
}
