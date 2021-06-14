import 'package:flutter/material.dart';
import 'package:argo/argo.dart';
import 'package:tkmonkey_web/config/values/values.dart';

import 'widgets/info_contact_widget.dart';

class AboutUsPage extends StatelessWidget {
  const AboutUsPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          child: Container(
              width: context.widthPct(50),
              height: context.heightPct(50),
              decoration: BoxDecoration(
                  color: kLightGrayColor,
                  borderRadius: BorderRadius.circular(30)),
              child: Padding(
                padding: const EdgeInsets.all(2 * kSpaceBig),
                child: Center(
                  child: Column(
                    children: [
                      Text(
                        'About us',
                        style: Theme.of(context)
                            .textTheme
                            .headline4!
                            .copyWith(color: kCreamColor),
                      ),
                      kSpaceBigVertical,
                      Text(
                        _aboutUsText,
                        style: Theme.of(context)
                            .textTheme
                            .headline2!
                            .copyWith(color: kCreamColor.withOpacity(0.2)),
                      ),
                      kSpaceBigVertical,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InfoContactWidget.location(),
                          kSpaceBigHorizontal,
                          InfoContactWidget.email(),
                        ],
                      ),
                    ],
                  ),
                ),
              )),
        )
      ],
    );
  }
}

const _aboutUsText =
    'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum';
