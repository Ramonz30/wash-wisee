import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:laundry_app/constants/constant.dart';

class GoogleloginBtn extends StatelessWidget {
  const GoogleloginBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(32),
        border: Border.all(
          width: 1.8,
          color: AppColors.primary,
        ),
      ),
      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 70),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 30,
            width: 30,
            child: SvgPicture.asset(SvgIcon.google),
          ),
          SizedBox(width: 8),
          Text(
            'Continue with Google',
            style: TextStyle(
              color: AppColors.primary,
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
