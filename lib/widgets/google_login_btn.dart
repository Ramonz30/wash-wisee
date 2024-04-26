import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:laundry_app/constants/constant.dart';

class GoogleloginBtn extends StatelessWidget {
  const GoogleloginBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 51,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(32),
        border: Border.all(
          width: 1,
          color: AppColors.primary,
        ),
      ),
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 70),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 30,
            width: 30,
            child: SvgPicture.asset(SvgIcon.google),
          ),
          const SizedBox(width: 8),
          Text(
            'Continue with Google',
            style: GoogleFonts.livvic(
              color: AppColors.primary,
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
