part of '../main_view_imports.dart';

@RoutePage()
class MainView extends StatelessWidget {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      extendBody: true,
      bottomNavigationBar: _MainViewBottomNavBar(),
      body: _MainViewBody(),
    );
  }
}
