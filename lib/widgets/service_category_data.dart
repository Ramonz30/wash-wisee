import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/constant.dart';

class ServiceCategoryData extends StatelessWidget {
  final String text;
  final String imagePath;
  const ServiceCategoryData(
      {super.key, required this.text, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 175,
      width: 170,
      margin: EdgeInsets.symmetric(
        vertical: 15,
      ),
      padding: const EdgeInsets.symmetric(horizontal: 24),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: const Color(0xffEBEBEB),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 34,
            backgroundImage: AssetImage(imagePath),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            text,
            style: GoogleFonts.livvic(
              fontWeight: FontWeight.w600,
              fontSize: 14,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              SvgPicture.asset(SvgIcon.locationDropIcon),
              const SizedBox(
                width: 5,
              ),
              Text(
                'Atlantic height',
                style: GoogleFonts.livvic(
                  fontWeight: FontWeight.w400,
                  fontSize: 13,
                  height: 1.4,
                  color: const Color(0xff9DA4AE),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
