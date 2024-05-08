import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:laundry_app/constants/constant.dart';
import 'package:laundry_app/widgets/button_tile.dart';
import 'package:laundry_app/widgets/text_field.dart';

class PasswordScreen extends StatefulWidget {
  const PasswordScreen({super.key});

  @override
  State<PasswordScreen> createState() => _PasswordScreenState();
}

class _PasswordScreenState extends State<PasswordScreen> {
  bool _obscure = false;
  bool _obscure1 = false;
  bool _obscure2 = false;
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
          'Password',
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
            children: [
              const SizedBox(
                height: 30,
              ),
              ReusableTextField(
                hintText: 'Current password',
                obscure: false,
                iconButton: InkWell(
                  onTap: () {
                    setState(() {
                      _obscure = !_obscure;
                    });
                  },
                  child: _obscure
                      ? const Icon(
                          Icons.visibility_off_outlined,
                          size: 20,
                        )
                      : const Icon(
                          Icons.visibility_outlined,
                          size: 20,
                        ),
                ),
                onTap: () {},
              ),
              const SizedBox(
                height: 15,
              ),
              ReusableTextField(
                hintText: 'New password',
                obscure: false,
                iconButton: InkWell(
                  onTap: () {
                    setState(() {
                      _obscure1 = !_obscure1;
                    });
                  },
                  child: _obscure1
                      ? const Icon(
                          Icons.visibility_off_outlined,
                          size: 20,
                        )
                      : const Icon(
                          Icons.visibility_outlined,
                          size: 20,
                        ),
                ),
                onTap: () {},
              ),
              const SizedBox(
                height: 15,
              ),
              ReusableTextField(
                hintText: 'Confirm new password',
                obscure: false,
                iconButton: InkWell(
                  onTap: () {
                    setState(() {
                      _obscure2 = !_obscure2;
                    });
                  },
                  child: _obscure2
                      ? const Icon(
                          Icons.visibility_off_outlined,
                          size: 20,
                        )
                      : const Icon(
                          Icons.visibility_outlined,
                          size: 20,
                        ),
                ),
                onTap: () {},
              ),
              const SizedBox(
                height: 30,
              ),
              const ButtonTile(
                text: 'Change Password',
                width: double.infinity,
                textColor: Colors.white,
                buttonColor: AppColors.primary,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
