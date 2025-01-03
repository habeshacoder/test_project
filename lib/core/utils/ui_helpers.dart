import 'package:flutter/material.dart';

// Size constants for UI elements
const double veryTinySize = 2.0;
const double tinySize = 5.0;
const double smallSize = 10.0;
const double middleSize = 15.0;
const double mediume20 = 20.0;
const double mediumSize = 25.0;
const double largeSize = 50.0;
const double largeMedium = 72.0;
const double massiveSize = 120.0;
const double customButtonWidth = 0.85;
// An empty widget that takes no space
const Widget emptySpace = SizedBox.shrink();

// horizontal spaces
const Widget horizontalSpaceSmall = SizedBox(width: smallSize);

// dynamic horizontal space
Widget horizontalSpace(double height) => SizedBox(height: height);

// vertical spaces
const Widget verticalSpaceTiny = SizedBox(height: tinySize);
const Widget verticalSpaceSmall = SizedBox(height: smallSize);
const Widget verticalSpaceMiddle = SizedBox(height: middleSize);
const Widget verticalSpaceMedium = SizedBox(height: mediumSize);
const Widget verticalSpaceLarge = SizedBox(height: largeSize);
const Widget verticalSpaceMassive = SizedBox(height: massiveSize);

// dynamic vertical space
Widget verticalSpace(double height) => SizedBox(height: height);

// screen size based on device
double screenWidth(BuildContext context) => MediaQuery.of(context).size.width;
double screenHeight(BuildContext context) => MediaQuery.of(context).size.height;
