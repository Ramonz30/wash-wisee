import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:laundry_app/constants/constant.dart';
import 'package:laundry_app/widgets/service_category_data.dart';

import '../../constants/strings.dart';

class Stain extends StatelessWidget {
  const Stain({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Center(
            child: SvgPicture.asset(
              SvgIcon.backIcon,
              height: 28,
              width: 28,
            ),
          ),
        ),
        title: Text(
          'Stain removal',
          style: GoogleFonts.livvic(
              fontSize: 17,
              // fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w600,
              letterSpacing: 0.5,
              color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 25,
        ),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  ...List.generate(
                      textImage.length,
                      (index) => ServiceCategoryData(
                          text: textImage[index]['text'],
                          imagePath: textImage[index]['image'])),
                ],
              ),
              Column(
                children: [
                  ...List.generate(
                      textImage.length,
                      (index) => ServiceCategoryData(
                          text: textImage[index]['text'],
                          imagePath: textImage[index]['image']))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
