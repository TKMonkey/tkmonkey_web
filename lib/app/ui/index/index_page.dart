import 'package:flutter/material.dart';
import 'package:tkmonkey_web/app/ui/core/widgets/header_widget.dart';
import 'package:tkmonkey_web/config/values/values.dart';

import 'widgets/tkm_title_appbar.dart';

class IndexPage extends StatelessWidget {
  const IndexPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: getHorizontalPaddingMainPages(context),
              child: const TKMTitleWidget(),
            ),
          ),
          HeaderContainerWidget(),
        ],
      ),
    );
  }
}
