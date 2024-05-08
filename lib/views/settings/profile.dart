import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:laundry_app/constants/constant.dart';
import 'package:laundry_app/widgets/button_tile.dart';

import '../../widgets/text_field.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final device = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        automaticallyImplyLeading: false,
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
          'Profile',
          style: GoogleFonts.livvic(
            fontWeight: FontWeight.w600,
            fontSize: 18,
            color: Colors.black,
            letterSpacing: 0.5,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Stack(children: [
                  const CircleAvatar(
                    radius: 45,
                    backgroundColor: Colors.black,
                    foregroundColor: Colors.white,
                    child: Text(
                      'A',
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                  Positioned(
                    bottom: 1,
                    right: 5,
                    child: Container(
                      height: 27,
                      width: 27,
                      decoration: const ShapeDecoration(
                        shape: CircleBorder(),
                        color: AppColors.primary,
                      ),
                      child: Center(
                        child: SvgPicture.asset(
                          SvgIcon.edit,
                          height: 13,
                          width: 13,
                        ),
                      ),
                    ),
                  ),
                ]),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Adeshina Abubakri',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
              const Text(
                'Adeshina@washwisee.com',
                style: TextStyle(fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: 40,
              ),
              ReusableTextField(
                initialValue: 'Adeshina@washwisee.com',
                obscure: false,
                iconButton: null,
                onTap: () {},
              ),
              const SizedBox(
                height: 15,
              ),
              ReusableTextField(
                initialValue: 'Adeshina',
                obscure: false,
                iconButton: null,
                onTap: () {},
              ),
              const SizedBox(
                height: 15,
              ),
              ReusableTextField(
                initialValue: 'Abubakri',
                obscure: false,
                iconButton: null,
                onTap: () {},
              ),
              const SizedBox(
                height: 25,
              ),
              const ButtonTile(
                text: 'Save Changes',
                textColor: Colors.white,
                buttonColor: AppColors.primary,
              ),
              const SizedBox(height: 12),
              const ButtonTile(
                text: 'Cancel',
                textColor: AppColors.primary,
                borderColor: Colors.black,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
