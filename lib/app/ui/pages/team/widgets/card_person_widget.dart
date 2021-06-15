import 'package:flip_card/flip_card_controller.dart';
import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';
import 'package:tkmonkey_web/app/ui/core/uimodels/percent_skill_uim.dart';
import 'package:tkmonkey_web/app/ui/core/uimodels/team_member_uim.dart';
import 'package:tkmonkey_web/app/ui/pages/team/widgets/percent_skill_widget.dart';
import 'package:tkmonkey_web/config/values/values.dart';

import 'avatar_widget.dart';
import 'bio_widget.dart';
import 'circular_button_widget.dart';
import 'name_widget.dart';

class CardPersonWidget extends StatelessWidget {
  CardPersonWidget({
    Key? key,
    required this.member,
  }) : super(key: key);

  final TeamMemberUIModel member;

  final flipController = FlipCardController();

  @override
  Widget build(BuildContext context) {
    return FlipCard(
      flipOnTouch: false,
      controller: flipController,
      front: _BackgroundCardWidget(
        color: kWhiteColor,
        child: _FrontCardWidget(
          name: member.name,
          githubProfile: member.githubProfile,
          bio: member.bio,
          linkedinProfile: member.linkedinProfile,
          onRotatePress: _toggleCard,
        ),
      ),
      back: _BackgroundCardWidget(
        color: kLightGrayColor,
        child: _BackCardWidget(
          percentSkill: member.percentSkill,
          freeWidget: member.freeWidget,
          onRotatePress: _toggleCard,
        ),
      ),
    );
  }

  void _toggleCard() {
    flipController.toggleCard();
  }
}

class _BackgroundCardWidget extends StatelessWidget {
  const _BackgroundCardWidget({
    Key? key,
    required this.color,
    required this.child,
  }) : super(key: key);

  final Color color;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(
        maxWidth: 200,
        maxHeight: 350,
      ),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
      child: child,
    );
  }
}

class _FrontCardWidget extends StatelessWidget {
  const _FrontCardWidget({
    Key? key,
    required this.name,
    required this.githubProfile,
    required this.linkedinProfile,
    required this.bio,
    required this.onRotatePress,
  }) : super(key: key);

  final String name;
  final String githubProfile;
  final String linkedinProfile;
  final String bio;
  final VoidCallback onRotatePress;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => Stack(
        children: [
          Column(
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
              const Expanded(child: SizedBox()),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircularButtonWidget(
                onPressed: onRotatePress,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _BackCardWidget extends StatelessWidget {
  const _BackCardWidget({
    Key? key,
    required this.percentSkill,
    required this.onRotatePress,
    this.freeWidget = const SizedBox(),
  }) : super(key: key);

  final List<PercentSkillUIModel> percentSkill;
  final Widget freeWidget;
  final VoidCallback onRotatePress;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: LayoutBuilder(
        builder: (context, constraints) => Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Skills', style: Theme.of(context).textTheme.headline2),
                kSpaceSmallVertical,
                ListView.builder(
                  itemCount: percentSkill.length > 4 ? 4 : percentSkill.length,
                  shrinkWrap: true,
                  itemBuilder: (context, index) => PercentSkillWidget(
                    percentSkilll: percentSkill[index],
                    width: constraints.maxWidth * 0.8,
                  ),
                ),
                kSpaceSmallVertical,
                freeWidget,
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircularButtonWidget(
                  onPressed: onRotatePress,
                  mainColor: kWhiteColor,
                  iconColor: kBlackColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
