import 'package:flutter/material.dart';
import 'package:tkmonkey_web/app/ui/core/widgets/header_widget.dart';

import 'old_home_content_view.dart';

class OldHomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return HeaderContainerWidget(
      body: SizedBox(
        width: size.width,
        height: size.height,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: HomeContentView(),
            ),
          ],
        ),
      ),
    );
  }
}
