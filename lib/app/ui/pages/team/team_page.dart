import 'package:flutter/material.dart';

import 'widgets/space_home_path_widget.dart';
import 'widgets/team_members_widget.dart';

class TeamPage extends StatelessWidget {
  const TeamPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: const [
        SpaceHomePathWidget(),
        TeamMemberWidget(),
      ],
    );
  }
}
