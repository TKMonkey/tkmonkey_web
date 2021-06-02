import 'package:argo/argo.dart';
import 'package:flutter/material.dart';

const double kSizeHeaderBar = 80;
const double kSpaceBig = 30;
const double kSpaceSmall = 20;

const kSpaceBigVertical = SizedBox(height: kSpaceBig);
const kSpaceSmallHorizontal = SizedBox(width: 10);

EdgeInsets getPaddingMainPages(BuildContext context) {
  return EdgeInsets.symmetric(
      vertical: context.heightPct(5), horizontal: context.widthPct(10));
}
