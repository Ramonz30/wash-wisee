import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:laundry_app/constants/strings.dart';
import 'package:laundry_app/views/services/dry.dart';
import 'package:laundry_app/views/services/pressing.dart';
import 'package:laundry_app/views/services/stain.dart';
import 'package:laundry_app/views/services/wash.dart';
import 'package:laundry_app/widgets/text_field.dart';

import '../../constants/constant.dart';
import '../notification/notification_page.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Widget> pages = [
      Wash(),
      Dry(),
      Stain(),
      Pressing(),
    ];
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    const CircleAvatar(
                      radius: 23,
                      backgroundImage: NetworkImage(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQlYNWyKBbun6mL-S4HTSJ2JyH9HdHRI5PITkJ-lXlBbQ&s'),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      // mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Adeyemo Adesina',
                          style: GoogleFonts.livvic(
                              fontWeight: FontWeight.w500,
                              fontSize: 15,
                              height: 1.4,
                              color: const Color(0xFF828280)),
                        ),
                        Row(
                          children: [
                            SvgPicture.asset(SvgIcon.locationDropIcon),
                            Text(
                              'Atlantic height',
                              style: GoogleFonts.livvic(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 13,
                                  height: 1.4,
                                  color: Colors.black),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const Spacer(),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => NotificationPage()));
                      },
                      child: SvgPicture.asset(
                        SvgIcon.notification,
                        height: 24,
                        width: 24,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 23,
                ),
                ReusableTextField(
                  hintText: 'Search',
                  obscure: false,
                  prefixIcon: SizedBox(
                    height: 20,
                    width: 18,
                    child: Center(
                      child: SvgPicture.asset(
                        SvgIcon.searchIcon,
                        height: 20,
                        width: 20,
                      ),
                    ),
                  ),
                  iconButton: null,
                  onTap: () {},
                  filled: true,
                ),
                const SizedBox(
                  height: 30,
                ),
                Text(
                  'Services',
                  style: GoogleFonts.livvic(
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 300,
                    childAspectRatio: 2.3 / 2.1,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20,
                  ),
                  itemCount: categories.length,
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index) {
                    final data = categories[index];
                    final serviceData = pages[index];
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (_) => serviceData));
                      },
                      child: ServiceCategory(
                        categoryColor: data.categoryColor,
                        text: data.text,
                      ),
                    );
                  },
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Nearest laundry',
                      style: GoogleFonts.livvic(
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                        color: const Color(0xff9DA4AE),
                      ),
                    ),
                    SvgPicture.asset(
                      SvgIcon.arrowRightIcon,
                      height: 24,
                      width: 24,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    laundryTile(),
                    laundryTile(),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget laundryTile() {
    return Container(
      height: 172,
      width: 163,
      padding: const EdgeInsets.symmetric(horizontal: 24),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: const Color(0xffEBEBEB),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(
            child: CircleAvatar(
              radius: 34,
              backgroundImage: NetworkImage(
                  'https://fcdrycleaners.com/wp-content/uploads/2023/11/How-Much-Does-A-Load-Of-Laundry-Cost-At-Home_-Home-vs-Laundromat-Costs.jpg'),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            'Adeyemo wash',
            style: GoogleFonts.livvic(
              fontWeight: FontWeight.w600,
              fontSize: 14,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              SvgPicture.asset(SvgIcon.locationDropIcon),
              const SizedBox(
                width: 5,
              ),
              Text(
                'Atlantic height',
                style: GoogleFonts.livvic(
                  fontWeight: FontWeight.w400,
                  fontSize: 13,
                  height: 1.4,
                  color: const Color(0xff9DA4AE),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ServiceCategory extends StatelessWidget {
  final Color categoryColor;
  final String text;
  const ServiceCategory({
    super.key,
    required this.categoryColor,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      width: 184,
      padding: const EdgeInsets.only(left: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: categoryColor.withOpacity(0.2),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            backgroundColor: categoryColor,
            child: SvgPicture.asset(
              SvgIcon.dollarIcon,
              height: 24,
              width: 24,
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            text,
            style: GoogleFonts.sora(
              fontWeight: FontWeight.w400,
              fontSize: 14,
              color: const Color(0xff818893),
            ),
          ),
        ],
      ),
    );
  }
}
