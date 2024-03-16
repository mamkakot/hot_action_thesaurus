import 'package:flutter/material.dart';

Color getFontColorForBackground(Color background) {
  return (background.computeLuminance() > 0.5) ? Colors.black : Colors.white;
}
