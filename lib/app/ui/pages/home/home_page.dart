import 'package:flutter/material.dart';

import 'widgets/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: const TKMTitleWidget(),
          ),
          const Align(
            alignment: Alignment.topRight,
            child: EndDecorationWidget(size: 120),
          ),
          const Align(
            alignment: Alignment.bottomCenter,
            child: LineBottomWidget(),
          ),
        ],
      ),
    );
  }
}
