import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:laundry_app/constants/constant.dart';
import 'package:laundry_app/views/home/login_screen.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (ctx) => const LoginScreen()));
              },
              child: SizedBox(
                height: 200,
                width: 250,
                child: SvgPicture.asset(SvgIcon.washwisee),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
