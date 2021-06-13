import 'package:flutter/material.dart';
import 'package:tkmonkey_web/config/values/values.dart';

import 'avatar_widget.dart';
import 'bio_widget.dart';
import 'name_widget.dart';

class CardPersonWidget extends StatelessWidget {
  const CardPersonWidget({
    Key? key,
    required this.name,
    required this.githubProfile,
    this.linkedinProfile = '',
    required this.bio,
  }) : super(key: key);

  final String name;
  final String githubProfile;
  final String linkedinProfile;
  final String bio;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(
        maxWidth: 200,
        maxHeight: 350,
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
              linkedinProfile: linkedinProfile,
            ),
            BioWidget(bio: bio),
          ],
        ),
      ),
    );
  }
}
