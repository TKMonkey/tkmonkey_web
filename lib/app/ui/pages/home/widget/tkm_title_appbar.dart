import 'dart:math';

import 'package:flutter/material.dart';
import 'package:tkmonkey_web/app/ui/core/widgets/points_decoration_widget.dart';
import 'package:tkmonkey_web/config/values/values.dart';

class TKMTitleWidget extends StatelessWidget {
  const TKMTitleWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const PointsDecorationWidget(
      quantityX: 2,
      quantityY: 2,
      delta: 15,
      colors: [
        kYellowColor,
        kBlueColor,
        kBlueColor,
        kYellowColor,
      ],
    );
  }
}
