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
  }
}
