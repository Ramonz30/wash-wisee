import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants/constant.dart';

class AddressManagementScreen extends StatelessWidget {
  const AddressManagementScreen({super.key});

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
          'Address management',
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 24,
              ),
              Text(
                'Address details',
                style: GoogleFonts.livvic(
                    fontWeight: FontWeight.w500, fontSize: 16),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                'Manage your pickup and delivery\naddresses here.',
                style: GoogleFonts.livvic(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    height: 1.4,
                    color: const Color(0xFF828280)),
              ),
              const SizedBox(
                height: 20,
              ),
              const AddressDetailsTile(
                title: 'Lagos boy hostel',
                value: true,
              ),
              const SizedBox(
                height: 10,
              ),
              const AddressDetailsTile(
                title: 'Atlantic height',
                value: false,
              ),
              const SizedBox(
                height: 15,
              ),
              const Row(
                children: [
                  Icon(Icons.add, color: AppColors.primary),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'Add new address',
                    style: TextStyle(color: AppColors.primary),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AddressDetailsTile extends StatelessWidget {
  final String title;
  final bool value;
  final String? imagePath;
  final String? text;
  const AddressDetailsTile({
    required this.title,
    required this.value,
    this.imagePath,
    this.text,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 104,
      // width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xFFEFEFEF)),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                if (imagePath != null) SvgPicture.asset(imagePath!),
                SizedBox(
                  width: imagePath != null ? 10 : 0,
                ),
                Text(
                  title,
                  style: GoogleFonts.livvic(
                      fontWeight: FontWeight.w500, fontSize: 16),
                ),
                const Spacer(),
                SizedBox(
                  height: 25,
                  width: 25,
                  child: Checkbox(
                    checkColor: Colors.white,
                    activeColor: AppColors.primary,
                    value: value,
                    shape: const CircleBorder(),
                    onChanged: (bool? value) {},
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 3,
            ),
            Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: imagePath != null ? 58 : 0),
              child: Text(
                text ?? 'Unilorin campus',
                style: GoogleFonts.livvic(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: Colors.grey),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: imagePath != null ? 58 : 0),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: const Text(
                      'Edit',
                      style: TextStyle(color: AppColors.primary),
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: const Text(
                      'Delete',
                      style: TextStyle(
                        color: Color(0xff828280),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
