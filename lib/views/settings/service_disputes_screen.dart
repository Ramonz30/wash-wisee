import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:laundry_app/constants/constant.dart';
import 'package:laundry_app/widgets/button_tile.dart';
import 'package:laundry_app/widgets/text_field.dart';

class ServiceDisputesScreen extends StatelessWidget {
  const ServiceDisputesScreen({super.key});

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
          'Service disputes',
          style: GoogleFonts.livvic(
            fontWeight: FontWeight.w600,
            fontSize: 18,
            color: Colors.black,
            letterSpacing: 0.5,
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 20,
                ),
                ReusableTextField(
                  hintText: 'Ref ID',
                  obscure: false,
                  iconButton: null,
                  onTap: () {},
                ),
                const SizedBox(
                  height: 15,
                ),
                ReusableTextField(
                  hintText: 'Issue',
                  obscure: false,
                  iconButton: null,
                  onTap: () {},
                ),
                const SizedBox(
                  height: 15,
                ),
                ReusableTextField(
                  hintText: 'Description of issue',
                  borderRadius: 16,
                  padding: const EdgeInsets.only(top: 25, left: 20, right: 10),
                  maxLines: 4,
                  obscure: false,
                  iconButton: null,
                  onTap: () {},
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'Upload Supporting Document(s)',
                  style: GoogleFonts.livvic(
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                SizedBox(
                  height: 117,
                  width: double.infinity,
                  child: DottedBorder(
                    borderType: BorderType.RRect,
                    radius: const Radius.circular(8),
                    strokeWidth: 1.3,
                    dashPattern: const [5, 5],
                    color: const Color(0xffbac0d499),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 10,
                        ),
                        Center(
                          child: CircleAvatar(
                            radius: 25,
                            backgroundColor: const Color(0xffF9FAFB),
                            child: CircleAvatar(
                              radius: 19,
                              backgroundColor: const Color(0xffF2F4F7),
                              child: SvgPicture.asset(
                                SvgIcon.uploadIcon,
                                height: 20,
                                width: 20,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Tab to upload',
                          style: GoogleFonts.livvic(
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          'PNG or JPG | 10MB max.',
                          style: GoogleFonts.livvic(
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            color: const Color(0xff828280),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const ButtonTile(
                  text: 'Submit dispute',
                  textColor: Colors.white,
                  buttonColor: AppColors.primary,
                ),
                const SizedBox(
                  height: 17,
                ),
                const ButtonTile(
                  text: 'Cancel',
                  textColor: AppColors.primary,
                  borderColor: AppColors.primary,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
