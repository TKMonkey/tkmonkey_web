import 'package:flutter/material.dart';
import 'package:tkmonkey_web/app/ui/core/widgets/header_widget.dart';
import 'package:tkmonkey_web/app/ui/pages/about/about_us_page.dart';
import 'package:tkmonkey_web/app/ui/pages/home/home_page.dart';
import 'package:tkmonkey_web/app/ui/pages/team/team_page.dart';

import 'widgets/tkm_title_appbar.dart';

class IndexPage extends StatelessWidget {
  const IndexPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          IndexedStack(
            index: 2,
            children: [
              HomePage(),
              AboutUsPage(),
              TeamPage(),
            ],
          ),
          const TKMTitleWidget(),
          const HeaderContainerWidget(),
        ],
      ),
    );
  }
}
