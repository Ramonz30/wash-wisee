import 'dart:async';

import 'package:flutter/material.dart';
import 'package:laundry_app/constants/strings.dart';
import 'package:laundry_app/views/home/login_screen.dart';
import 'package:laundry_app/widgets/button_tile.dart';
import 'package:laundry_app/widgets/dot_indicator_tile.dart';
import 'package:laundry_app/widgets/onboarding_tile.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _startAutoScroll();
  }

  @override
  void dispose() {
    _stopAutoScroll();
    super.dispose();
  }

  void _startAutoScroll() {
    _timer = Timer.periodic(const Duration(seconds: 2), (timer) {
      if (_currentPage < onboardings.length - 1) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }
      _pageController.animateToPage(
        _currentPage,
        duration: const Duration(milliseconds: 500),
        curve: Curves.ease,
      );
    });
  }

  void _stopAutoScroll() {
    _timer?.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.symmetric(horizontal: 24),
        children: [
          const SizedBox(
            height: 24,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 1.4,
            child: Stack(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height / 1.4,
                  child: ScrollConfiguration(
                    behavior:
                        const ScrollBehavior().copyWith(overscroll: false),
                    child: PageView.builder(
                      controller: _pageController,
                      itemCount: onboardings.length,
                      onPageChanged: (index) {
                        setState(() {
                          _currentPage = index;
                        });
                      },
                      itemBuilder: (context, index) {
                        final sliderData = onboardings[index];
                        return OnboardingTile(
                          imageBg: sliderData.imageBg,
                          title: sliderData.title,
                          subTitle: sliderData.subTitle,
                        );
                      },
                    ),
                  ),
                ),
                Positioned(
                  bottom: 16,
                  left: 16,
                  child: Row(
                    children: [
                      ...List.generate(
                        onboardings.length,
                        (index) => Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 3),
                          child: DotIndicator(
                            isActive: index == _currentPage,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 35,
          ),
          const ButtonTile(
            text: 'Create account',
            textColor: Colors.white,
            buttonColor: Color(0xFF332C54),
          ),
          const SizedBox(
            height: 12,
          ),
          ButtonTile(
            text: 'Have an account? Login',
            textColor: const Color(0xFF332C54),
            borderColor: const Color(0xFF332C54),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => const LoginScreen()));
            },
          ),
        ],
      ),
    ));
  }
}
