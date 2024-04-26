import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OnboardingTile extends StatelessWidget {
  final String imageBg;
  final String title;
  final String subTitle;
  const OnboardingTile(
      {super.key,
      required this.imageBg,
      required this.title,
      required this.subTitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 1.4,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.transparent,
        image: DecorationImage(
          image: AssetImage(imageBg),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.white,
            ),
            child: Text(
              title,
              style: GoogleFonts.livvic(
                fontSize: 12.5,
              ),
            ),
          ),
          const SizedBox(
            height: 17,
          ),
          SizedBox(
            width: 196,
            child: Text(
              subTitle,
              style: GoogleFonts.livvic(
                fontSize: 18,
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(
            height: 55,
          ),
        ],
      ),
    );
  }
}
