import 'package:argo/argo.dart';
import 'package:flutter/material.dart';

const double kSizeHeaderBar = 45;
const double kSpaceBig = 30;
const double kSpaceSmall = 20;

const kSpaceBigVertical = SizedBox(height: kSpaceBig);
const kSpaceSmallVertical = SizedBox(height: kSpaceSmall);
const kSpaceSmallHorizontal = SizedBox(width: 10);

EdgeInsets getPaddingMainPages(BuildContext context) => EdgeInsets.symmetric(
      vertical: context.heightPct(5),
      horizontal: context.widthPct(10),
    );

EdgeInsets getHorizontalPaddingMainPages(BuildContext context) =>
    EdgeInsets.symmetric(horizontal: context.widthPct(10));
