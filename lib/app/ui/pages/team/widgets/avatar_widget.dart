import 'package:flutter/material.dart';
import 'package:tkmonkey_web/config/values/values.dart';

class AvatarWidget extends StatelessWidget {
  const AvatarWidget({
    Key? key,
    required this.width,
    required this.height,
  }) : super(key: key);

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
        image: DecorationImage(
          image: ExactAssetImage(AssetsManager.imageProfileJames),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
