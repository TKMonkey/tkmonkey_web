import 'package:flutter/material.dart';
import 'package:tkmonkey_web/app/ui/core/widgets/points_decoration_widget.dart';
import 'package:tkmonkey_web/config/values/values.dart';

class TKMTitleWidget extends StatelessWidget {
  const TKMTitleWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Padding(
        padding: getHorizontalPaddingMainPages(context),
        child: SizedBox(
          height: kSizeHeaderBar,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              const PointsDecorationWidget(
                quantityX: 2,
                quantityY: 2,
                radius: 6,
                delta: 2,
                colors: [
                  kYellowColor,
                  kCreamColor,
                  kCreamColor,
                  kYellowColor,
                ],
              ),
              RichText(
                text: TextSpan(
                    text: 'TheKoding',
                    style: Theme.of(context).textTheme.headline3,
                    children: [
                      TextSpan(
                        text: 'Monkey',
                        style: Theme.of(context)
                            .textTheme
                            .headline3!
                            .copyWith(color: kPrimaryColor),
                      )
                    ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
