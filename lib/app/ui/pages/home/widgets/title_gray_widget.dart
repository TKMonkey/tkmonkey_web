import 'package:flutter/material.dart';
import 'package:tkmonkey_web/config/values/values.dart';

class TitleGrayWidget extends StatelessWidget {
  const TitleGrayWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 100, left: 350),
        child: Text(
          nameTKM,
          style: Theme.of(context).textTheme.headline5,
        ),
      ),
    );
  }
}
