import 'package:flutter/material.dart';
import 'package:tkmonkey_web/config/values/colors.dart';

class CircularButtonWidget extends StatelessWidget {
  const CircularButtonWidget({
    Key? key,
    required this.onPressed,
    this.size = 30,
    this.mainColor = kBlackColor,
    this.iconColor = kWhiteColor,
  }) : super(key: key);

  final VoidCallback onPressed;
  final double size;
  final Color mainColor;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        shape: const CircleBorder(),
        primary: mainColor,
      ),
      child: SizedBox(
        width: size,
        height: size,
        child: Icon(
          Icons.rotate_left,
          color: iconColor,
          size: size * 2 / 3,
        ),
      ),
    );
  }
}
