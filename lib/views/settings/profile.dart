import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:laundry_app/constants/constant.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final device = MediaQuery.of(context).size;
    void backAction() {
      Navigator.of(context).pop();
    }

    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        margin: const EdgeInsets.symmetric(
          vertical: 60,
          horizontal: 20,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  GestureDetector(
                    onTap: backAction,
                    child: const Icon(
                      Icons.arrow_back,
                    ),
                  ),
                  SizedBox(width: device.width / 3.1),
                  const Text(
                    'Profile',
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
                  ),
                ],
              ),
              const SizedBox(height: 40),
              SizedBox.square(
                dimension: 130,
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    const Align(
                      alignment: Alignment.topCenter,
                      child: CircleAvatar(
                        radius: 60,
                        backgroundColor: Colors.black,
                        foregroundColor: Colors.white,
                        child: Text(
                          'A',
                          style: TextStyle(fontSize: 60),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Container(
                        padding: const EdgeInsets.all(8.0),
                        decoration: const ShapeDecoration(
                          shape: CircleBorder(),
                          color: AppColors.primary,
                        ),
                        child: SizedBox(
                          height: 20,
                          width: 20,
                          child: SvgPicture.asset(SvgIcon.edit),
                        ),
                      ),
                    ),
                  ],
                ),
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
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
