import 'package:flutter/material.dart';
import 'package:tkmonkey_web/config/values/colors.dart';

class CircularButtonWidget extends StatelessWidget {
  const CircularButtonWidget({
    Key? key,
    required this.onPressed,
    this.size = 30,
  }) : super(key: key);

  final VoidCallback onPressed;
  final double size;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        shape: const CircleBorder(),
        primary: kBlackColor,
      ),
      child: SizedBox(
        width: size,
        height: size,
        child: Icon(
          Icons.rotate_left,
          color: kWhiteColor,
          size: size * 2 / 3,
        ),
      ),
    );
  }
}
