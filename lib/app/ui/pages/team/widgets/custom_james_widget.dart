import 'package:flutter/material.dart';
import 'package:argo/argo.dart';
import 'package:tkmonkey_web/config/values/values.dart';

class CustomJamesWidget extends StatelessWidget {
  const CustomJamesWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        _ThingsAboutMeWidget(
          icon: Icons.keyboard,
          description: 'Writing hobbie',
        ),
        kSpaceLittleVertical,
        _ThingsAboutMeWidget(
          icon: Icons.videogame_asset_outlined,
          description: 'Gamer per minutes',
        ),
        kSpaceLittleVertical,
        _ThingsAboutMeWidget(
          icon: Icons.star_border_outlined,
          description: 'Crypto enthusiastic',
        ),
        kSpaceLittleVertical,
        _ThingsAboutMeWidget(
          icon: Icons.pets,
          description: 'Pet lover',
        ),
      ],
    );
  }
}

class _ThingsAboutMeWidget extends StatelessWidget {
  const _ThingsAboutMeWidget({
    Key? key,
    required this.icon,
    required this.description,
  }) : super(key: key);

  final IconData icon;
  final String description;

  @override
  Widget build(BuildContext context) {
    final textTheme = context.textTheme;
    return Row(
      children: [
        Icon(
          icon,
          color: kWhiteColor,
          size: 16,
        ),
        kSpaceLittleHorizontal,
        Text(
          description,
          style: textTheme.headline2!.copyWith(
            fontSize: 12,
          ),
        ),
      ],
    );
  }
}
