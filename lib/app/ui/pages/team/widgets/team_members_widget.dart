import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tkmonkey_web/app/application/team_members_riverpod.dart';
import 'package:tkmonkey_web/config/values/dimens.dart';

import 'card_person_widget.dart';

class TeamMemberWidget extends HookWidget {
  const TeamMemberWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final teamMembers = useProvider(teamMemberProvider);
    return Align(
      child: SizedBox(
        height: 350,
        child: ListView.builder(
          itemCount: teamMembers.length,
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.only(right: kSpaceMedium),
            child: CardPersonWidget(
              member: teamMembers[index],
            ),
          ),
        ),
      ),
    );
  }
}
