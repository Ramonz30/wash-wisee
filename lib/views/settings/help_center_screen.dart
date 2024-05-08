import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants/constant.dart';

class HelpCenter extends StatelessWidget {
  const HelpCenter({super.key});

  @override
  Widget build(BuildContext context) {
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
          'Help Center',
          style: GoogleFonts.livvic(
            fontWeight: FontWeight.w600,
            fontSize: 17,
            color: Colors.black,
            letterSpacing: 0.5,
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
          child: Column(
            children: [
              helpCenterTile(
                imagePath: SvgIcon.helpCircle,
                text: 'FAQ',
              ),
              const SizedBox(
                height: 15,
              ),
              helpCenterTile(
                imagePath: SvgIcon.contactsIcon,
                text: 'Contact Support',
              ),
              const SizedBox(
                height: 15,
              ),
              helpCenterTile(
                imagePath: SvgIcon.policyIcon,
                text: 'Terms of Service',
              ),
              const SizedBox(
                height: 15,
              ),
              helpCenterTile(
                imagePath: SvgIcon.securityIcon,
                text: 'Privacy Policy',
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget helpCenterTile({required String imagePath, required String text}) {
    return Container(
      height: 55,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: Row(
        children: [
          SvgPicture.asset(imagePath),
          const SizedBox(
            width: 15,
          ),
          Text(
            text,
            style: GoogleFonts.livvic(
              fontWeight: FontWeight.w500,
              fontSize: 16,
            ),
          ),
          const Spacer(),
          SvgPicture.asset(SvgIcon.arrowUpIcon),
        ],
      ),
    );
  }
}
