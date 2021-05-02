import 'package:argo/argo.dart';
import 'package:flutter/material.dart';
import 'package:tkmonkey_web/config/values/values.dart';

class CircleBackGroundWidget extends StatelessWidget {
  const CircleBackGroundWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: -75,
      top: -75,
      child: Container(
        width: ResponsiveWrapper.isMobile(context) ? 180 : 200,
        height: ResponsiveWrapper.isMobile(context) ? 180 : 200,
        decoration: const BoxDecoration(color: kGrayColor, shape: BoxShape.circle),
      ),
    );
  }
}
