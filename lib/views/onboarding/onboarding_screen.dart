import 'dart:async';

import 'package:carousel_slider/carousel_slider.dart';
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
  CarouselController buttonCarouselController = CarouselController();
  final ScrollController _scrollController = ScrollController();

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  final PageController _pageController = PageController();
  int _currentPage = 0;

  Timer? _timer;

  @override
  void initState() {
    super.initState();
    //_startAutoScroll();
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
                CarouselSlider(
                  carouselController: buttonCarouselController,
                  options: CarouselOptions(
                    height: MediaQuery.of(context).size.height / 1.4,
                    animateToClosest: false,
                    autoPlay: true,
                    enlargeCenterPage: true,
                    enlargeFactor: 0.3,

                    autoPlayInterval: const Duration(seconds: 2),

                    onPageChanged: (index, reason) {
                      setState(() {
                        _currentPage = index;
                      });
                    },

                    // enlargeCenterPage: true,
                    // aspectRatio: 16 / 9,
                    // viewportFraction: 0.8,
                  ),
                  items: onboardings.map((sliderData) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Container(
                          height: MediaQuery.of(context).size.height / 1.4,
                          width: double.infinity,
                          margin: const EdgeInsets.symmetric(horizontal: 1),
                          child: OnboardingTile(
                            imageBg: sliderData.imageBg,
                            title: sliderData.title,
                            subTitle: sliderData.subTitle,
                          ),
                        );
                      },
                    );
                  }).toList(),
                ),
                Positioned(
                  bottom: 16,
                  left: 60,
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
          ButtonTile(
            text: 'Create account',
            textColor: Colors.white,
            buttonColor: const Color(0xFF332C54),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => const LoginScreen()));
            },
          ),
          const SizedBox(
            height: 12,
          ),
          ButtonTile(
            text: 'Have an account? Login',
            textColor: const Color(0xFF332C54),
            borderColor: const Color(0xFF332C54),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => const LoginScreen()));
            },
          ),
        ],
      ),
    ));
  }
}
