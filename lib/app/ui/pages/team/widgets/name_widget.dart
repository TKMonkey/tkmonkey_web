import 'package:flutter/material.dart';
import 'package:argo/argo.dart';
import 'package:tkmonkey_web/config/values/values.dart';

// todo: Link github
class NameWidget extends StatelessWidget {
  const NameWidget({
    Key? key,
    required this.width,
    required this.name,
    required this.githubProfile,
    required this.linkedinProfile,
  }) : super(key: key);

  final double width;
  final String name;
  final String githubProfile;
  final String linkedinProfile;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      padding: const EdgeInsets.all(5),
      color: kWhiteColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            name,
            style: context.textTheme.subtitle1!.copyWith(
              color: kBlackColor,
            ),
          ),
          const SizedBox(width: 5),
          Image.asset(
            AssetsManager.githubLogo,
            width: 18,
            height: 18,
          ),
          const SizedBox(width: 5),
          Image.asset(
            AssetsManager.linkedinLogo,
            width: 18,
            height: 18,
          ),
        ],
      ),
    );
  }
}
