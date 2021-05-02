import 'package:flutter/material.dart';
import 'package:tkmonkey_web/config/values/values.dart';

import 'widgets/widgets.dart';

class HomeContentView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const SpaceHomePathWidget(),
        const CircleBackGroundWidget(),
        const CustomBeenPathWidget(),
        Padding(
          padding: getPaddingMainPages(context),
          child: Stack(
            fit: StackFit.passthrough,
            children: [
              const TitleGrayWidget(),
              const DescriptionHomeWidget(),
            ],
          ),
        ),
        const CardsInfoWidget(),
      ],
    );
  }
}
