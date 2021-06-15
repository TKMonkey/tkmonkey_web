import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tkmonkey_web/app/ui/core/uimodels/percent_skill_uim.dart';
import 'package:tkmonkey_web/app/ui/core/uimodels/team_member_uim.dart';
import 'package:tkmonkey_web/app/ui/pages/team/widgets/custom_james_free_widget.dart';

final teamMemberProvider = Provider((ref) => [
      TeamMemberUIModel(
        name: 'James Cardona',
        githubProfile: 'jamescardona11',
        linkedinProfile: 'jamescardona11',
        bio:
            'Tech explorer | Passionate about sharing explorations around Android and Flutter development and software engineering.',
        percentSkill: [
          PercentSkillUIModel(80, 'Flutter'),
          PercentSkillUIModel(65, 'Android'),
          PercentSkillUIModel(75, 'Leadership'),
          PercentSkillUIModel(55, 'Node.js'),
        ],
        freeWidget: const AboutJamesWidget(),
      ),
      TeamMemberUIModel(
        name: 'Juan Quintero',
        githubProfile: 'juequinterore',
        bio:
            'Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever ',
        percentSkill: [
          PercentSkillUIModel(80, 'Android'),
          PercentSkillUIModel(65, 'Flutter'),
          PercentSkillUIModel(78, 'Nodejs'),
          PercentSkillUIModel(82, 'GCP'),
        ],
      ),
    ]);
