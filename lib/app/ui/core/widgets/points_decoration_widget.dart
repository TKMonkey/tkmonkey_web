import 'package:flutter/material.dart';
import 'package:tkmonkey_web/config/values/values.dart';

class PointsDecorationWidget extends StatelessWidget {
  const PointsDecorationWidget({
    Key? key,
    required this.quantityX,
    required this.quantityY,
    this.radius = 5,
    this.delta = 20,
    this.color = kPrimaryColor,
    this.colors,
  }) : super(key: key);

  final int quantityX;
  final int quantityY;
  final double radius;
  final double delta;
  final Color color;
  final List<Color>? colors;

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: _PointsPainter(
        quantityX: quantityX,
        quantityY: quantityY,
        delta: delta,
        radius: radius,
        color: color,
        colors: colors,
      ),
    );
  }
}

class _PointsPainter extends CustomPainter {
  final int quantityX;
  final int quantityY;
  final double radius;
  final double delta;
  final Color color;
  final List<Color>? colors;

  _PointsPainter({
    required this.quantityX,
    required this.quantityY,
    required this.radius,
    required this.delta,
    required this.color,
    this.colors = const [],
  });

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..style = PaintingStyle.fill
      ..color = color;

    final quantity = quantityX * quantityY;

    int x = 0;
    int y = 0;

    for (int i = 0; i < quantity; i++) {
      if (colors?.isNotEmpty == true) {
        paint.color = colors![i];
      }
      final offset = Offset(delta * (x + 1), delta * (y + 1));
      canvas.drawCircle(offset, radius, paint);
      x++;

      if (x == quantityX) {
        y++;
        x = 0;
      }
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
