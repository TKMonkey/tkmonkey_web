import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:argo/argo.dart';
import 'package:tkmonkey_web/config/values/values.dart';

class LineBottomWidget extends StatelessWidget {
  const LineBottomWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: context.widthPx,
        height: 35,
        margin: const EdgeInsets.only(bottom: 20),
        child: Center(
          child: Stack(
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: SizedBox(
                  width: context.widthPx,
                  child: CustomPaint(
                    painter: _DashLinePainter(),
                  ),
                ),
              ),
              Positioned(
                right: 80,
                child: Container(
                  height: 35,
                  width: 100,
                  decoration: const BoxDecoration(
                    color: kCreamColor,
                    borderRadius: BorderRadius.all(
                      Radius.circular(4),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(AssetsManager.githubLogo,
                            width: 30, height: 30),
                        const SizedBox(width: 10),
                        Image.asset(AssetsManager.pubLogo,
                            width: 30, height: 30),
                        // SvgPicture.asset(
                        //   AssetsManager.imageLogoApp,
                        //   width: 25,
                        //   height: 25,
                        // ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class _DashLinePainter extends CustomPainter {
  _DashLinePainter({
    this.color = kPrimaryColor,
    this.dashSpace = 8,
    this.dashWidth = 3,
    this.width = 2,
  });

  final Color color;
  final double dashSpace;
  final double dashWidth;
  final double width;

  @override
  void paint(Canvas canvas, Size size) {
    final _paint = Paint()
      ..color = color
      ..strokeWidth = width
      ..style = PaintingStyle.stroke
      ..strokeJoin = StrokeJoin.round;

    final path = Path();

    path.moveTo(0, size.height / 2);
    path.lineTo(size.width, size.height / 2);

    final dashPath = Path();

    double distance = 0.0;
    for (final PathMetric pathMetric in path.computeMetrics()) {
      while (distance < pathMetric.length) {
        dashPath.addPath(
          pathMetric.extractPath(distance, distance + dashWidth),
          Offset.zero,
        );
        distance += dashWidth;
        distance += dashSpace;
      }
    }
    canvas.drawPath(dashPath, _paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
