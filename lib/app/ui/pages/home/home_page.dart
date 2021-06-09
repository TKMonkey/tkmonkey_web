import 'package:flutter/material.dart';
import 'package:tkmonkey_web/app/ui/pages/home/widgets/title_gray_widget.dart';

import 'widgets/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const EndDecorationWidget(size: 120),
          const LineBottomWidget(),
          const TitleGrayWidget(),
          const CenterInfoWidget(),
          const CardsInfoWidget(),
          const CustomBeenPathWidget()
        ],
      ),
    );
  }
}
