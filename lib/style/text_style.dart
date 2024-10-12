import 'package:flutter/material.dart';

TextStyle appTextStyle1({Color? color, FontWeight? fontWeight, double? size}) {
  return TextStyle(
    fontSize: size ?? 24,
    color: color ?? Colors.white,
    fontWeight: fontWeight ?? FontWeight.bold,
    fontFamily: "font1",
  );
}

TextStyle appTextStyle2({Color? color, FontWeight? fontWeight, double? size}) {
  return TextStyle(
    fontSize: size ?? 14,
    color: color ?? Colors.black,
    fontWeight: fontWeight ?? FontWeight.bold,
    fontFamily: "font1",
  );
}
