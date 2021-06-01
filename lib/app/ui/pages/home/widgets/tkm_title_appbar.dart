import 'package:flutter/material.dart';
import 'package:tkmonkey_web/app/ui/core/widgets/points_decoration_widget.dart';
import 'package:tkmonkey_web/config/values/values.dart';

class TKMTitleWidget extends StatelessWidget {
  const TKMTitleWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.0),
          child: PointsDecorationWidget(
            quantityX: 2,
            quantityY: 2,
            delta: 15,
            colors: [
              kYellowColor,
              kCreamColor,
              kCreamColor,
              kYellowColor,
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 12.0),
          child: RichText(
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
        ),
      ],
    );
  }
}
