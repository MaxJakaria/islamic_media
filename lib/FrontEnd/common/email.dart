import 'package:flutter/material.dart';

class TextFildDecoration {
  InputDecoration creatTextFildDecoration(
    String lebelText,
    Icon prefixIcon,
  ) {
    return InputDecoration(labelText: lebelText, prefixIcon: prefixIcon);
  }
}
