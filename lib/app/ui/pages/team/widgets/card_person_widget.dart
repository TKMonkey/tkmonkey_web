import 'package:flutter/material.dart';
import 'package:tkmonkey_web/config/values/values.dart';

class CardPersonWidget extends StatelessWidget {
  const CardPersonWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140,
      padding: const EdgeInsets.all(kSpaceLittle),
      decoration: BoxDecoration(
        color: kLightGrayColor3,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(
        children: [
          _AvatarWidget(),
        ],
      ),
    );
  }
}

class _AvatarWidget extends StatelessWidget {
  const _AvatarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('Hello'),
      ),
    );
  }
}

class _BioWidget extends StatelessWidget {
  const _BioWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('Hello'),
      ),
    );
  }
}
