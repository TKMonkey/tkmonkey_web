import 'package:flutter/material.dart';

class TitleGrayWidget extends StatelessWidget {
  const TitleGrayWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Text(
        'TKMonkey',
        style: Theme.of(context).textTheme.headline5,
      ),
    );
  }
}
