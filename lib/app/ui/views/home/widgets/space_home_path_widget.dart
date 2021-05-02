import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tkmonkey_web/config/values/values.dart';

class SpaceHomePathWidget extends StatelessWidget {
  const SpaceHomePathWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 0,
      bottom: 0,
      child: SvgPicture.asset(
        Assets.imageSpaceImage1,
        width: 600,
      ),
    );
  }
}
