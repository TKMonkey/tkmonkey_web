import 'package:flutter/material.dart';
import 'package:argo/argo.dart';
import 'package:tkmonkey_web/app/ui/core/widgets/points_decoration_widget.dart';
import 'package:tkmonkey_web/app/ui/pages/oldhome/widgets/background_title_gray_widget.dart';
import 'package:tkmonkey_web/config/values/values.dart';

import 'widgets/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({
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
            child: const TKMTitleWidget(),
          ),
          const Align(
            alignment: Alignment.topRight,
            child: EndDecorationWidget(size: 120),
          ),
          const Align(
            alignment: Alignment.bottomCenter,
            child: LineBottomWidget(),
          ),
          Positioned(
            top: context.heightPct(22),
            left: context.widthPct(22),
            child: SizedBox(
              width: 450,
              height: 200,
              child: Stack(
                children: [
                  Positioned(
                    right: 0,
                    child: TitleGrayWidget(),
                  ),
                  Row(
                    children: [
                      PointsDecorationWidget(
                        quantityX: 2,
                        quantityY: 2,
                        delta: 60,
                        radius: 45,
                      ),
                      const SizedBox(width: 50),
                      Text(
                        'Hello World!',
                        style: Theme.of(context)
                            .textTheme
                            .headline1!
                            .copyWith(fontSize: 35),
                      ),
                    ],
                  ),
                  Positioned(
                    left: 0,
                    bottom: 50,
                    child: Text(
                      "We're a OpenSource team.\nThe main goal with this project\nis create awesome new libraries and contribute to the comunity",
                      style: Theme.of(context).textTheme.headline2,
                    ),
                  ),
                ],
              ),
            ),
          ),
          CardsInfoWidget(),
        ],
      ),
    );
  }
}
