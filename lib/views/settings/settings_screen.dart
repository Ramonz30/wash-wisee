import 'package:flutter/material.dart';
import 'package:laundry_app/constants/constant.dart';
import 'package:laundry_app/views/settings/address_management_screen.dart';
import 'package:laundry_app/views/settings/help_center_screen.dart';
import 'package:laundry_app/views/settings/notification_screen.dart';
import 'package:laundry_app/views/settings/password_screen.dart';
import 'package:laundry_app/views/settings/payment_method.dart';
import 'package:laundry_app/views/settings/profile.dart';
import 'package:laundry_app/views/settings/service_disputes_screen.dart';
import 'package:laundry_app/widgets/settings_page_listtile.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        automaticallyImplyLeading: false,
        title: const Padding(
          padding: EdgeInsets.only(left: 3.0),
          child: Text(
            'Settings',
            style: TextStyle(
                fontWeight: FontWeight.w600, fontSize: 18, color: Colors.black),
          ),
        ),
      ),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.only(
            // top: 40,
            left: 20,
            right: 20,
          ),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // const SizedBox(height: 20),
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
                SettingslistTile(
                  svgPath: SvgIcon.notification,
                  title: 'Notifications',
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => const NotificationScreen()),
                  ),
                ),
                SettingslistTile(
                  svgPath: SvgIcon.lock,
                  title: 'Password',
                  onTap: () => Navigator.of(context).push(MaterialPageRoute(
                      builder: (ctx) => const PasswordScreen())),
                ),
                SettingslistTile(
                  svgPath: SvgIcon.creditCard,
                  title: 'Payment methods',
                  onTap: () => Navigator.of(context).push(MaterialPageRoute(
                      builder: (ctx) => const PaymentMethod())),
                ),
                SettingslistTile(
                  svgPath: SvgIcon.location,
                  title: 'Address Management',
                  onTap: () => Navigator.of(context).push(MaterialPageRoute(
                      builder: (ctx) => const AddressManagementScreen())),
                ),
                SettingslistTile(
                    svgPath: SvgIcon.alertCircle,
                    title: 'Service disputes',
                    onTap: () => Navigator.of(context).push(MaterialPageRoute(
                        builder: (ctx) => const ServiceDisputesScreen()))),
                SettingslistTile(
                    svgPath: SvgIcon.helpCircle,
                    title: 'Help Centre',
                    onTap: () => Navigator.of(context).push(MaterialPageRoute(
                        builder: (ctx) => const HelpCenter()))),

                const SettingslistTile(
                  svgPath: SvgIcon.logout,
                  title: 'Logout',
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
