import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle textStyle(
    {double? fontSize,
    FontWeight? fontWeight,
    TextDecoration? textDecoration,
    Color? color,TextStyle? textStyle,
    FontStyle? fontStyle}) {
  return GoogleFonts.tiroBangla(
      fontSize: fontSize,
      textStyle: textStyle,
      color: color,
      fontWeight: fontWeight,
      decoration: textDecoration,
      fontStyle: fontStyle);
}
