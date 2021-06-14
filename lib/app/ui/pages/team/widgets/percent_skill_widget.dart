import 'package:flutter/material.dart';
import 'package:argo/argo.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:tkmonkey_web/app/ui/core/uimodels/percent_skill_uim.dart';
import 'package:tkmonkey_web/config/values/values.dart';

class PercentSkillWidget extends StatelessWidget {
  const PercentSkillWidget({
    Key? key,
    required this.percentSkilll,
    required this.width,
  }) : super(key: key);

  final PercentSkillUIModel percentSkilll;
  final double width;

  @override
  Widget build(BuildContext context) {
    final textTheme = context.textTheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          percentSkilll.skill,
          style: textTheme.headline2!.copyWith(
            fontSize: 13,
          ),
        ),
        kSpaceLittleVertical,
        LinearPercentIndicator(
          width: width,
          lineHeight: 10.0,
          trailing: Text(
            '${percentSkilll.percent} %',
            style: textTheme.subtitle2!.copyWith(
              color: kPrimaryColor,
            ),
          ),
          percent: percentSkilll.percent / 100,
          linearStrokeCap: LinearStrokeCap.roundAll,
          backgroundColor: kBlackColor,
          progressColor: kPrimaryColor,
        ),
        kSpaceLittleVertical,
      ],
    );
  }
}
