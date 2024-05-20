import 'package:flutter/material.dart';

class AppDimensions {
  // height 803
  // width 411

  static double height(BuildContext context) =>
      MediaQuery.of(context).size.height;

  //height
  static double h10(context) => height(context) * 0.012;
  static double h18(context) => height(context) * 0.022;

  //padding
  static double p20(context) => height(context) * 0.024;
  static double p40(context) => height(context) * 0.049;
}
