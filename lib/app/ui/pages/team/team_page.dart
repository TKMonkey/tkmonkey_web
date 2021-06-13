import 'package:flutter/material.dart';
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
          children: [
            CardPersonWidget(
              name: 'James Cardona',
              githubProfile: 'jamescardona11',
            ),
            SizedBox(width: 20),
            CardPersonWidget(
              name: 'Juan Quintero',
              githubProfile: 'juequinterore',
            ),
          ],
        ),
      ),
    );
  }
}
