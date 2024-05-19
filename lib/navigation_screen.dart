import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:laundry_app/views/booking/booking_page.dart';
import 'package:laundry_app/views/settings/settings_screen.dart';

import 'constants/constant.dart';
import 'views/home/home_screen.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _currentIndex = 0;

  final List<Widget> screens = [
    const HomeScreen(),
    const BookingPage(),
    const SettingsScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: screens[_currentIndex],
          ),
        ],
      ),
      bottomNavigationBar: ClipPath(
        child: Container(
          height: 70,
          padding: const EdgeInsets.symmetric(horizontal: 24),
          width: MediaQuery.of(context).size.width / 0.04,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(0),
            border: Border(
              top: BorderSide(
                color: Colors.grey.withOpacity(0.5),
                width: 1.2,
              ),
            ),
            color: Colors.white,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              navButton(
                onTap: () {
                  setState(() {
                    _currentIndex = 0;
                  });
                },
                iconPath: _currentIndex == 0
                    ? SvgIcon.homeFillIcon
                    : SvgIcon.homeIcon,
                currentIndex: 0,
                text: 'Home',
              ),
              navButton(
                onTap: () {
                  setState(() {
                    _currentIndex = 1;
                  });
                },
                iconPath: _currentIndex == 1
                    ? SvgIcon.bookingFillIcon
                    : SvgIcon.bookingIcon,
                currentIndex: 1,
                text: 'Bookings',
              ),
              navButton(
                onTap: () {
                  setState(() {
                    _currentIndex = 2;
                  });
                },
                iconPath: _currentIndex == 2
                    ? SvgIcon.settingsFillIcon
                    : SvgIcon.settingsIcon,
                currentIndex: 2,
                text: 'Settings',
              ),
            ],
          ),
        ),
      ),
    );
  }

  navButton(
      {required VoidCallback onTap,
      required String iconPath,
      required int currentIndex,
      required String text}) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            iconPath,
            height: 24,
            width: 24,
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            text,
            style: GoogleFonts.livvic(
              fontWeight: FontWeight.w500,
              fontSize: 12,
              color: _currentIndex == currentIndex ? Colors.black : Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
