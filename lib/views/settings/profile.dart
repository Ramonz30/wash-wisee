import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:laundry_app/constants/constant.dart';
import 'package:laundry_app/widgets/button_tile.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final device = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        centerTitle: true,
        toolbarHeight: device.height / 8,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: SingleChildScrollView(
          child: Column(
            children: [
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
              ListView(
                shrinkWrap: true,
                children: const [
                  ButtonTile(
                    text: 'Save Changes',
                    textColor: Colors.white,
                    buttonColor: AppColors.primary,
                  ),
                  SizedBox(height: 12),
                  ButtonTile(
                    text: 'Cancel',
                    textColor: AppColors.primary,
                    borderColor: Colors.black,
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
