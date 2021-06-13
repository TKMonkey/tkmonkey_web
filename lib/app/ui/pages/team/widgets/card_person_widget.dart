import 'package:flutter/material.dart';
import 'package:argo/argo.dart';
import 'package:tkmonkey_web/config/values/values.dart';

import 'avatar_widget.dart';
import 'name_widget.dart';

class CardPersonWidget extends StatelessWidget {
  const CardPersonWidget({
    Key? key,
    required this.name,
    required this.githubProfile,
  }) : super(key: key);

  final String name;
  final String githubProfile;

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: const EdgeInsets.all(kSpaceLittle),
      constraints: BoxConstraints(
        maxWidth: 200,
        maxHeight: 300,
      ),
      decoration: BoxDecoration(
        color: kWhiteColor,
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
              githubProfile: githubProfile,
            ),
            BioWidget(),
          ],
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
