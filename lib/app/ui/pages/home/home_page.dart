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
    final theme = context.textTheme;

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
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                PointsDecorationWidget(
                  quantityX: 2,
                  quantityY: 2,
                  delta: -42,
                  radius: 70,
                ),
                Stack(
                  children: [
                    Positioned(
                      right: 0,
                      child: TitleGrayWidget(),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hello World!',
                          style: theme.headline1!.copyWith(fontSize: 35),
                        ),
                        RichText(
                          text: TextSpan(
                            text: "We're a ",
                            style: theme.headline2,
                            children: [
                              TextSpan(
                                text: 'OpenSource',
                                style: Theme.of(context)
                                    .textTheme
                                    .headline2!
                                    .copyWith(color: kPrimaryColor),
                              ),
                              TextSpan(
                                text:
                                    ' team.\nThe main goal of this project\nis to create awesome libraries and contribute to the community.',
                                style: theme.headline2,
                              )
                            ],
                          ),
                        ),
                        const SizedBox(height: 10),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            primary: kCreamColor,
                          ),
                          child: const Text('Projects'),
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          CardsInfoWidget(),
        ],
      ),
    );
  }
}
