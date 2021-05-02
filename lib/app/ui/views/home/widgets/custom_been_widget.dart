import 'package:flutter/material.dart';
import 'package:tkmonkey_web/config/values/values.dart';

class CustomBeenPathWidget extends StatelessWidget {
  const CustomBeenPathWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      left: 150,
      child: CustomPaint(
        size: const Size(250, 250),
        painter: _RPSCustomPainter(kGrayColor.withOpacity(0.1)),
      ),
    );
  }
}

class _RPSCustomPainter extends CustomPainter {
  final Color color;

  _RPSCustomPainter(this.color);

  @override
  void paint(Canvas canvas, Size size) {
    final path = Path()
      ..moveTo(size.width * 0.9379195, size.height * 0.6000399)
      ..cubicTo(size.width * 1.056563, size.height * 0.7418805, size.width * 0.7126366,
          size.height * 0.9462937, size.width * 0.4347361, size.height * 0.9462937)
      ..cubicTo(size.width * 0.1568356, size.height * 0.9462937, size.width * -0.03542808,
          size.height * 0.7879096, size.width * -0.06844727, size.height * 0.6000399)
      ..cubicTo(size.width * -0.1485075, size.height * 0.1445192, size.width * 0.6136850,
          size.height * -0.1450072, size.width * 0.4347361, size.height * 0.2537860)
      ..cubicTo(size.width * 0.1738975, size.height * 0.8350733, size.width * 0.8444857,
          size.height * 0.4883373, size.width * 0.9379195, size.height * 0.6000399)
      ..close();

    final paint = Paint()
      ..style = PaintingStyle.fill
      ..color = color;

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
