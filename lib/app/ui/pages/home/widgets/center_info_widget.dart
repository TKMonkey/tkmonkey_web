import 'package:flutter/material.dart';
import 'package:argo/argo.dart';
import 'package:tkmonkey_web/app/ui/core/widgets/points_decoration_widget.dart';
import 'package:tkmonkey_web/config/values/values.dart';

class CenterInfoWidget extends StatelessWidget {
  const CenterInfoWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = context.textTheme;
    return Align(
      child: FittedBox(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 200),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              const PointsDecorationWidget(
                quantityX: 2,
                quantityY: 2,
                delta: -42,
                radius: 70,
              ),
              const SizedBox(width: 20),
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
                              ' team.\nThe goal is to create awesome libraries,\nand contribute to the community.',
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
        ),
      ),
    );
  }
}
