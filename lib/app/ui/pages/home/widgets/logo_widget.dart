import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tkmonkey_web/config/values/values.dart';

class LogoWidget extends StatelessWidget {
  const LogoWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          child: Container(
            width: 300,
            height: 300,
            decoration: const BoxDecoration(
              color: kPrimaryColor,
              shape: BoxShape.circle,
            ),
          ),
        ),
        Positioned(
          right: 70,
          top: 10,
          child: SvgPicture.asset(
            AssetsManager.imageOnlyMonkey,
            width: 180,
          ),
        ),
      ],
    );

    return Container(
      width: 300,
      height: 300,
      decoration: const BoxDecoration(
        color: kPrimaryColor,
        shape: BoxShape.circle,
      ),
      child: Center(
        child: SvgPicture.asset(
          AssetsManager.imageOnlyMonkey,
          width: 220,
        ),
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
      ..cubicTo(
          size.width * 1.056563,
          size.height * 0.7418805,
          size.width * 0.7126366,
          size.height * 0.9462937,
          size.width * 0.4347361,
          size.height * 0.9462937)
      ..cubicTo(
          size.width * 0.1568356,
          size.height * 0.9462937,
          size.width * -0.03542808,
          size.height * 0.7879096,
          size.width * -0.06844727,
          size.height * 0.6000399)
      ..cubicTo(
          size.width * -0.1485075,
          size.height * 0.1445192,
          size.width * 0.6136850,
          size.height * -0.1450072,
          size.width * 0.4347361,
          size.height * 0.2537860)
      ..cubicTo(
          size.width * 0.1738975,
          size.height * 0.8350733,
          size.width * 0.8444857,
          size.height * 0.4883373,
          size.width * 0.9379195,
          size.height * 0.6000399)
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
