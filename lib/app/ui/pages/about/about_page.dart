import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // const Align(
          //   alignment: Alignment.topRight,
          //   child: EndDecorationWidget(size: 120),
          // ),
        ],
      ),
    );
  }
}
