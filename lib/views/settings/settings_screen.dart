import 'package:flutter/material.dart';
import 'package:laundry_app/constants/constant.dart';
import 'package:laundry_app/views/settings/profile.dart';
import 'package:laundry_app/widgets/settings_page_listtile.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.only(
            top: 40,
            left: 20,
            right: 20,
          ),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  'Settings',
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
                ),
                const SizedBox(height: 20),
                const CircleAvatar(
                  radius: 60,
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                  child: Text(
                    'A',
                    style: TextStyle(fontSize: 60),
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
                SettingslistTile(
                  svgPath: SvgIcon.user,
                  title: 'Profile',
                  onTap: () => Navigator.of(context).push(MaterialPageRoute(
                      builder: (ctx) => const ProfileScreen())),
                ),
                const SettingslistTile(
                  svgPath: SvgIcon.notification,
                  title: 'Notifications',
                ),
                const SettingslistTile(
                  svgPath: SvgIcon.lock,
                  title: 'Password',
                ),
                const SettingslistTile(
                  svgPath: SvgIcon.creditCard,
                  title: 'Payment methods',
                ),
                const SettingslistTile(
                  svgPath: SvgIcon.location,
                  title: 'Address Management',
                ),
                const SettingslistTile(
                  svgPath: SvgIcon.alertCircle,
                  title: 'Service disputes',
                ),
                const SettingslistTile(
                  svgPath: SvgIcon.helpCircle,
                  title: 'Help Centre',
                ),
                const SettingslistTile(
                  svgPath: SvgIcon.logout,
                  title: 'Logout',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
