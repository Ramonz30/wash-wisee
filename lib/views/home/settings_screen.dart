import 'package:flutter/material.dart';
import 'package:laundry_app/constants/constant.dart';
import 'package:laundry_app/widgets/settings_page_listtile.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(
          top: 60,
          left: 20,
          right: 20,
        ),
        child: const SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Settings',
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
              ),
              SizedBox(height: 20),
              Column(
                children: [
                  CircleAvatar(
                    radius: 60,
                    backgroundColor: Colors.black,
                    foregroundColor: Colors.white,
                    child: Text(
                      'A',
                      style: TextStyle(fontSize: 60),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Adeshina Abubakri',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                  Text(
                    'adeshina@washwisee.com',
                    style: TextStyle(fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SettingslistTile(svgPath: SvgIcon.user, title: 'Profile'),
                  SettingslistTile(
                      svgPath: SvgIcon.notification, title: 'Notifications'),
                  SettingslistTile(svgPath: SvgIcon.lock, title: 'Password'),
                  SettingslistTile(
                      svgPath: SvgIcon.creditCard, title: 'Payment methods'),
                  SettingslistTile(
                      svgPath: SvgIcon.location, title: 'Address Management'),
                  SettingslistTile(
                      svgPath: SvgIcon.alertCircle, title: 'Service disputes'),
                  SettingslistTile(
                      svgPath: SvgIcon.helpCircle, title: 'Help Centre'),
                  SettingslistTile(svgPath: SvgIcon.logout, title: 'Logout'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
