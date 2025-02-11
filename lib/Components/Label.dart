import 'package:flutter/material.dart';
import 'package:flutter_vyapar/Resources/colors.dart';
import 'package:flutter_vyapar/Resources/commons.dart';

class Label {
  final String text;
  final Color? color;
  final double? fontSize;
  final double? fontWeight;
  final int? maxLines;
  final FontStyle? fontStyle;
  final double? height;

  Label(
    this.text, {
    this.color,
    this.fontSize,
    this.fontWeight,
    this.maxLines,
    this.fontStyle,
    this.height,
  });

  Widget get title => Text(
        text,
        style: TextStyle(
            fontSize: fontSize ?? 20,
            color: color,
            fontVariations: [FontVariation.weight(fontWeight ?? 500)],
            fontStyle: fontStyle,
            height: height),
        maxLines: maxLines,
        overflow: maxLines != null ? TextOverflow.ellipsis : null,
      );
  Widget get subtitle => Text(
        text,
        style: TextStyle(
            fontSize: fontSize ?? 14,
            color: color ?? LColor.fadeText,
            fontVariations: [FontVariation.weight(fontWeight ?? 400)],
            fontStyle: fontStyle,
            height: height),
        maxLines: maxLines,
        overflow: maxLines != null ? TextOverflow.ellipsis : null,
      );

  Widget get spread => Center(
        child: Text(
          text.toUpperCase(),
          style: TextStyle(
            letterSpacing: 3,
            wordSpacing: 5,
            fontVariations: [FontVariation.weight(fontWeight ?? 600)],
            fontSize: 14,
            fontStyle: fontStyle,
            height: height,
            color: color ?? Colors.grey.shade600,
          ),
        ),
      );

  Widget get regular => Text(
        text,
        style: TextStyle(
            fontVariations: [FontVariation.weight(fontWeight ?? 600)],
            color: color,
            fontSize: fontSize,
            fontStyle: fontStyle,
            height: height),
      );
  Widget get withDivider => Row(
        children: [
          Text(
            text.toUpperCase(),
            style: TextStyle(
              letterSpacing: .7,
              fontSize: fontSize,
              color: color,
              fontStyle: fontStyle,
              height: height,
              fontVariations: [FontVariation.weight(fontWeight ?? 500)],
            ),
          ),
          width5,
          const Expanded(child: Divider())
        ],
      );
}
