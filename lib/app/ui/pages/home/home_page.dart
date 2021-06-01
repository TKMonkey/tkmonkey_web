import 'package:flutter/material.dart';
import 'package:argo/argo.dart';
import 'package:tale_drawer/tale_drawer.dart';
import 'package:tkmonkey_web/app/ui/pages/home/widget/end_decoration_widget.dart';
import 'package:tkmonkey_web/config/values/values.dart';

import 'widget/tkm_title_appbar.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ListView(
          children: [
            Text('Hello new View'),
            Text('Hello new View'),
            Text('Hello new View'),
            Text('Hello new View'),
            Text('Hello new View'),
          ],
        ),
        Scaffold(
          body: Stack(
            children: [
              // Padding(
              //   padding: getPaddingMainPages(context),
              //   child: Text('Hello new View'),
              // ),
              TKMTitleWidget(),
              const Align(
                alignment: Alignment.topRight,
                child: EndDecorationWidget(size: 120),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
