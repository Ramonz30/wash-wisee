import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ReusableTextField extends StatelessWidget {
  final String? hintText;
  final dynamic validator;
  final bool? obscure;
  final Widget? iconButton;
  final VoidCallback onTap;
  final dynamic controller;
  final String? initialValue;
  final TextInputType? textInputType;
  final double? textSize;
  final double? width;
  final double? height;
  final void Function(String? p1)? onSaved;
  const ReusableTextField(
      {Key? key,
      this.hintText,
      this.controller,
      required this.onTap,
      this.validator,
      this.obscure,
      this.iconButton,
      this.initialValue,
      this.textInputType,
      this.textSize,
      this.width,
      this.height,
      this.onSaved})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final keyBoardProvider = Provider.of<KeyboardProvider>(context);
    return SizedBox(
      width: width ?? 388,
      // height: height ?? 53,
      child: TextFormField(
        initialValue: initialValue,
        style: TextStyle(
          color: Colors.black,
          fontSize: textSize ?? 14,
          letterSpacing: 0.5,
        ),

        obscureText: obscure!,
        onTapOutside: (event) {
          FocusManager.instance.primaryFocus?.unfocus();
        },
        keyboardType: textInputType,
        controller: controller,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: hintText,
          // labelText: 'i3dn3kdnk3dn',
          suffixIcon: iconButton ?? iconButton,
          hintStyle: GoogleFonts.montserrat(
            fontSize: 14.0,
            fontWeight: FontWeight.w500,
            color: Colors.black38,
          ),

          labelStyle: const TextStyle(fontSize: 16.0, color: Colors.grey),
          contentPadding: const EdgeInsets.only(top: 5, left: 20, right: 10),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: const BorderSide(
              width: 1,
              color: Colors.black38,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: const BorderSide(
              width: 1,
              color: Colors.black38,
            ),

            // borderSide: const BorderSide(width: 1.5, color: Colors.grey),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: const BorderSide(
              width: 1,
              color: Colors.black38,
            ),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: const BorderSide(
              width: 1,
              color: Colors.black38,
            ),
          ),
          filled: false,
        ),
        onTap: onTap,
        validator: validator,
        // onSaved: onSaved,
        onChanged: onSaved,

        // onChanged: (text) {
        //   keyBoardProvider.setKeyboardOpen(text.isNotEmpty);
        // },
      ),
    );
  }
}
