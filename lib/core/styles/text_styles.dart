import 'package:flutter/material.dart';
import 'package:green_nart_app/core/constants/color.dart';

class TextStyles {
  static TextStyle headline = TextStyle(
    fontSize: 48,
    fontWeight: FontWeight.w600,
    color: Appcolor.textPrimary,
  );

  static TextStyle title = TextStyle(
    fontSize: 26,
    fontWeight: FontWeight.w600,
    color: Appcolor.textPrimary,
  );

  static TextStyle subtittle = TextStyle(
    fontSize: 18,

    color: Appcolor.textPrimary,
  );

  static TextStyle body = TextStyle(fontSize: 16, color: Appcolor.textPrimary);

  static TextStyle button = TextStyle(
    fontSize: 14,
    color: Appcolor.textPrimary,
  );

  static TextStyle small = TextStyle(fontSize: 12, color: Appcolor.textPrimary);
}
