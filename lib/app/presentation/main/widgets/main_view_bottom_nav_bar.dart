part of '../main_view_imports.dart';

class _MainViewBottomNavBar extends StatelessWidget {
  const _MainViewBottomNavBar();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: AppValues.xl.ext.padding.horizontal,
        child: SizedBox(
          height: 90,
          child: LayoutBuilder(
            builder: (_, cst) {
              return Stack(
                clipBehavior: Clip.none,
                children: [
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: SizedBox(
                      height: 80,
                      child: CustomPaint(
                        painter: _FloatingBottomNavBarPainter(
                          backgroundColor: context.appThemeExt.appColors.white
                              .byBrightness(context.ext.theme.isDark),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 25,
                    left: 0,
                    right: 0,
                    child: Container(
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                        color: context.appThemeExt.appColors.white.byBrightness(
                          context.ext.theme.isDark,
                        ),
                        shape: BoxShape.circle,
                      ),
                      child: _MainViewBottomNavBarItem(
                        index: 1,
                        icon:
                            (selected) => Padding(
                              padding: AppValues.lg.ext.padding.all,
                              child:
                                  (selected
                                          ? IconsEnum
                                              .btnTabbarCollectionSelected
                                          : IconsEnum
                                              .btnTabbarCollectionUnselected)
                                      .toAssetImage(),
                            ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: cst.maxWidth / 7,
                    top: 25,
                    bottom: 15,
                    child: _MainViewBottomNavBarItem(
                      index: 0,
                      icon:
                          (selected) =>
                              (selected
                                      ? IconsEnum.btnTabbarHomeSelected
                                      : IconsEnum.btnTabbarHomeUnselected)
                                  .toAssetImage(),
                      label: (isSelected) => 'Home',
                    ),
                  ),
                  Positioned(
                    right: cst.maxWidth / 7,
                    top: 25,
                    bottom: 15,
                    child: _MainViewBottomNavBarItem(
                      index: 2,
                      icon:
                          (selected) =>
                              (selected
                                      ? IconsEnum.btnTabbarInfoSelected
                                      : IconsEnum.btnTabbarInfoUnselected)
                                  .toAssetImage(),
                      label: (isSelected) => 'Info',
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}

class _FloatingBottomNavBarPainter extends CustomPainter {
  const _FloatingBottomNavBarPainter({required this.backgroundColor});

  final Color backgroundColor;

  @override
  void paint(Canvas canvas, Size size) {
    final width = size.width;
    final height = size.height;

    final rrect = RRect.fromLTRBAndCorners(
      0,
      0,
      width,
      height,
      topLeft: const Radius.circular(20),
      topRight: const Radius.circular(20),
      bottomLeft: const Radius.circular(30),
      bottomRight: const Radius.circular(30),
    );

    final shadowPath =
        Path()..addRRect(
          RRect.fromLTRBAndCorners(
            0,
            -5,
            width,
            height,
            topLeft: const Radius.circular(20),
            topRight: const Radius.circular(20),
            bottomLeft: const Radius.circular(30),
            bottomRight: const Radius.circular(30),
          ),
        );

    canvas.drawShadow(shadowPath, Colors.black26, 8, true);

    final path =
        Path()
          ..moveTo(0, 0)
          ..lineTo(width / 2 - 70, 0)
          ..quadraticBezierTo(width / 2 - 45, 0, width / 2 - 45, height / 4)
          ..arcTo(
            Rect.fromCircle(center: Offset(width / 2, height / 4), radius: 45),
            math.pi,
            -math.pi,
            false,
          )
          ..quadraticBezierTo(width / 2 + 45, 0, width / 2 + 70, 0)
          ..lineTo(width, 0)
          ..lineTo(width, height)
          ..lineTo(0, height)
          ..close();

    final paint =
        Paint()
          ..color = backgroundColor
          ..style = PaintingStyle.fill;

    canvas
      ..save()
      ..clipRRect(rrect)
      ..drawPath(path, paint)
      ..restore();
  }

  @override
  bool shouldRepaint(_FloatingBottomNavBarPainter oldDelegate) =>
      oldDelegate != this;
}
