import 'package:flutter/material.dart';

class CustomTextWidget extends StatelessWidget {
  final String text;
  final dynamic align;
  final double? fontSize;
  final Color? color;
  final String? fontFamily;
  final int? maxLine;
  final TextDecoration? textDecoration;
  final FontWeight? fontWeight;
  final double? wordSpacing;

  const CustomTextWidget({
    required this.text,
    this.align,
    this.fontSize,
    this.color,
    this.fontFamily,
    this.maxLine,
    this.textDecoration,
    super.key,
    this.fontWeight,
    this.wordSpacing,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: align,
      overflow: TextOverflow.ellipsis,
      maxLines: maxLine ?? 2,
      style: TextStyle(
        wordSpacing: wordSpacing,
        // fontFamily: fontFamily,
        fontSize: fontSize,
        decoration: textDecoration,
        color: color,
        fontWeight: fontWeight,
      ),
    );
  }
}
