part of '../see_all_view_imports.dart';

@RoutePage()
class SeeAllView extends StatelessWidget {
  const SeeAllView({required this.title, required this.artworkIds, super.key});

  final String title;
  final List<int> artworkIds;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SeeAllViewCubit(artworksIds: artworkIds)..init(),
      child: Scaffold(
        appBar: CustomAppbar(isBackButtonVisible: true, title: title),
        body: const _SeeAllViewBody(),
      ),
    );
  }
}
