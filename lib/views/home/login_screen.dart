import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:laundry_app/constants/constant.dart';
import 'package:laundry_app/navigation_screen.dart';
import 'package:laundry_app/widgets/google_login_btn.dart';
import 'package:laundry_app/widgets/text_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _remember = false;
  bool _obscure = false;

  @override
  Widget build(BuildContext context) {
    final device = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        toolbarHeight: device.height / 8,
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: Container(
        margin: const EdgeInsets.symmetric(
          vertical: 20,
          horizontal: 20,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              const Text(
                'Welcome back',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 10),
              const Text('Please enter your details to login.'),
              const SizedBox(height: 30),
              ReusableTextField(
                hintText: 'Email address',
                obscure: false,
                iconButton: null,
                onTap: () {},
              ),
              const SizedBox(
                height: 20,
              ),
              ReusableTextField(
                hintText: 'Password',
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
                          size: 15,
                        )
                      : const Icon(
                          Icons.visibility_outlined,
                          size: 15,
                        ),
                ),
                onTap: () {},
              ),
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Checkbox(
                          value: _remember,
                          onChanged: (value) {
                            setState(() {
                              _remember = value!;
                            });
                          }),
                      Text(
                        'Remember me',
                        style: GoogleFonts.livvic(fontSize: 14),
                      ),
                    ],
                  ),
                  Text(
                    'Forgot password?',
                    style: GoogleFonts.livvic(
                        fontWeight: FontWeight.w600, color: AppColors.primary),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              FractionallySizedBox(
                widthFactor: 1,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (_) => const NavBar()));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primary,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 16),
                  ),
                  child: const Text(
                    'Login',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Divider(
                    thickness: 1,
                    color: Colors.black38,
                  ),
                  Text('OR'),
                  Divider(
                    thickness: 1,
                    color: Colors.black38,
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const GoogleloginBtn(),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Don’t have an account?',
                    style: GoogleFonts.livvic(
                        color: AppColors.primary, fontSize: 14),
                  ),
                  Text(
                    ' Sign up',
                    style: GoogleFonts.livvic(
                        fontSize: 14, fontWeight: FontWeight.w600),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
