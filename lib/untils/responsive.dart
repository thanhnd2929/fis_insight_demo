import 'package:flutter/material.dart';

class ResponsiveHelper {
  final BuildContext context;

  ResponsiveHelper(this.context);

  double get screenWidth => MediaQuery.of(context).size.width;

  double get screenHeight => MediaQuery.of(context).size.height;

  double wp(double percentage) {
    return screenWidth * (percentage / 100);
  }

  double hp(double percentage) {
    return screenHeight * (percentage / 100);
  }
}
