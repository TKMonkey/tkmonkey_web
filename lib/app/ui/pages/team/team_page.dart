import 'package:flutter/material.dart';
import 'package:tkmonkey_web/app/ui/core/uimodels/percent_skill_uim.dart';
import 'package:tkmonkey_web/app/ui/pages/team/widgets/card_person_widget.dart';

class TeamPage extends StatelessWidget {
  const TeamPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CardPersonWidget(
              name: 'James Cardona',
              githubProfile: 'jamescardona11',
              linkedinProfile: 'jamescardona11',
              bio:
                  'Tech explorer | Passionate about sharing explorations around Android and Flutter development and software engineering.',
              percentSkill: [
                PercentSkillUIModel(80, 'Flutter'),
                PercentSkillUIModel(65, 'Android'),
                PercentSkillUIModel(75, 'Leadership'),
              ],
            ),
            const SizedBox(width: 20),
            CardPersonWidget(
              name: 'Juan Quintero',
              githubProfile: 'juequinterore',
              bio:
                  'Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever ',
              percentSkill: [
                PercentSkillUIModel(80, 'Android'),
                PercentSkillUIModel(65, 'Flutter'),
                PercentSkillUIModel(78, 'Nodejs'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
