import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ButtonTile extends StatelessWidget {
  final double? height;
  final double? width;
  final double? radius;
  final String text;
  final Color textColor;
  final Color? buttonColor;
  final VoidCallback? onTap;
  final Color? borderColor;

  const ButtonTile(
      {super.key,
      this.height,
      this.width,
      this.radius,
      required this.text,
      required this.textColor,
      this.buttonColor,
      this.onTap,
      this.borderColor});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height ?? 52,
        width: width ?? double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(radius ?? 30),
            color: buttonColor ?? Colors.transparent,
            border: Border.all(
              color: borderColor ?? Colors.transparent,
            )),
        child: Center(
          child: Text(
            text,
            style: GoogleFonts.livvic(fontSize: 14, color: textColor),
          ),
        ),
      ),
    );
  }
}
