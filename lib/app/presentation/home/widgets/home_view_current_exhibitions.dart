part of '../home_view_imports.dart';

class _HomeViewCurrentExhibitions extends StatelessWidget {
  const _HomeViewCurrentExhibitions();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: AppValues.xl2.ext.padding.horizontal,
      child: IntrinsicHeight(
        child: Row(
          children: List.generate(3, (index) {
            return Row(
              children: [
                const MetArtworkCard(metObjectModel: MetObjectModel()),
                if (index != 2) AppValues.xl2.ext.sizedBox.horizontal,
              ],
            );
          }),
        ),
      ),
    );
  }
}
