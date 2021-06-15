import 'package:flutter/widgets.dart';

import 'percent_skill_uim.dart';

class TeamMemberUIModel {
  TeamMemberUIModel({
    required this.name,
    required this.githubProfile,
    this.linkedinProfile = '',
    required this.bio,
    required this.percentSkill,
    this.freeWidget = const SizedBox(),
  });

  final String name;
  final String githubProfile;
  final String linkedinProfile;
  final String bio;
  final List<PercentSkillUIModel> percentSkill;
  final Widget freeWidget;
}
