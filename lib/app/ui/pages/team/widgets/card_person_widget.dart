import 'package:flutter/material.dart';
import 'package:argo/argo.dart';
import 'package:tkmonkey_web/config/values/values.dart';

import 'avatar_widget.dart';

class CardPersonWidget extends StatelessWidget {
  const CardPersonWidget({
    Key? key,
    required this.name,
  }) : super(key: key);

  final String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: const EdgeInsets.all(kSpaceLittle),
      constraints: BoxConstraints(
        maxWidth: 200,
        maxHeight: 300,
      ),
      decoration: BoxDecoration(
        color: kLightGrayColor3,
        borderRadius: BorderRadius.circular(10),
      ),
      child: LayoutBuilder(
        builder: (context, constraints) => Column(
          children: [
            AvatarWidget(
              width: constraints.maxWidth,
              height: constraints.maxHeight / 2,
            ),
            NameWidget(
              width: constraints.maxWidth,
              name: name,
            ),
            BioWidget(),
          ],
        ),
      ),
    );
  }
}

class NameWidget extends StatelessWidget {
  const NameWidget({
    Key? key,
    required this.width,
    required this.name,
  }) : super(key: key);

  final double width;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      padding: const EdgeInsets.all(5),
      color: kWhiteColor,
      child: Text(
        name,
        style: context.textTheme.subtitle1!.copyWith(
          color: kBlackColor,
        ),
      ),
    );
  }
}

class BioWidget extends StatelessWidget {
  const BioWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('Hello'),
      ),
    );
  }
}
