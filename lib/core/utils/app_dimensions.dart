import 'package:flutter/material.dart';

class AppDimensions {
  // height 803
  // width 411

  static double height(BuildContext context) =>
      MediaQuery.of(context).size.height;
  static double width(BuildContext context) =>
      MediaQuery.of(context).size.width;

  //height
  static double h5(context) => height(context) * 0.006;
  static double h10(context) => height(context) * 0.012;
  static double h18(context) => height(context) * 0.022;
  static double h20(context) => height(context) * 0.0249;
  static double h50(context) => height(context) * 0.062;
  static double h70(context) => height(context) * 0.087;
  static double h100(context) => height(context) * 0.124;
  static double h120(context) => height(context) * 0.149;

  //width
  static double w5(context) => width(context) * 0.012;
  static double w7(context) => width(context) * 0.017;
  static double w14(context) => width(context) * 0.034;
  static double w20(context) => width(context) * 0.048;
  static double w30(context) => width(context) * 0.0729;

  //padding
  static double p5(context) => height(context) * 0.006;
  static double p10(context) => height(context) * 0.012;
  static double p15(context) => height(context) * 0.0186;
  static double p20(context) => height(context) * 0.024;
  static double p40(context) => height(context) * 0.049;

  //radius
  static double r8(context) => height(context) * 0.0099;
  static double r10(context) => height(context) * 0.012;
  static double r12(context) => height(context) * 0.0149;
}
