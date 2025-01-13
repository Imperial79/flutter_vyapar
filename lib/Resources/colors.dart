// import 'package:flutter/material.dart';

import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/material.dart';

class LColor {
  static const Color scaffold = Color(0xFFFFFFFF);
  static const Color primary = Color(0xFF1685B1);
  static const Color primaryAccent = Color(0xFFB9EBFF);
  static const Color card = Color(0xFFE7E7E7);
  static const Color border = Color(0xFF474747);
  static const Color fadeText = Color(0xFF9C9C9C);
}

class StatusText {
  static const Color danger =
      Color(0xFFFF0000); // Added a color for danger status
  static const Color success = Color(0xFF28a745);
  static const Color warning = Color(0xFFFFC107);
  static const Color info = Color(0xFF17a2b8);
  static const Color light = Color(0xFFf8f9fa);
  static const Color dark = Color(0xFF343a40);
}

Color kOpacity(Color color, double opacity) =>
    color.withAlpha((opacity * 255).round());

// ColorScheme kColor(BuildContext context) => Theme.of(context).colorScheme;

ColorFilter kSvgColor(Color color) => ColorFilter.mode(color, BlendMode.srcIn);
