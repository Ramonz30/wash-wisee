import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:laundry_app/views/booking/widget/cancelled_widget.dart';
import 'package:laundry_app/views/booking/widget/completed_widget.dart';
import 'package:laundry_app/views/booking/widget/inprogress_widget.dart';

import '../../constants/constant.dart';
import '../../constants/custom_text_widget.dart';
import '../../widgets/text_field.dart';

class BookingPage extends StatefulWidget {
  const BookingPage({super.key});

  @override
  State<BookingPage> createState() => _BookingPageState();
}

class _BookingPageState extends State<BookingPage>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        automaticallyImplyLeading: false,
        title: const CustomTextWidget(
          text: 'Bookings',
          fontSize: 17,
          fontWeight: FontWeight.w600,
          color: Colors.black,
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 24, left: 24, bottom: 16),
                child: ReusableTextField(
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
              ),
              DefaultTabController(
                length: 3,
                child: TabBar(
                  controller: _tabController,
                  padding: EdgeInsets.zero,
                  labelColor: AppColors.purpleColor, // Color for selected tab
                  unselectedLabelColor:
                      AppColors.mediumLightGrey, // Color for unselected tabs
                  indicatorColor: AppColors.purpleColor,
                  labelStyle: const TextStyle(
                      color: AppColors.mediumLightGrey,
                      fontWeight: FontWeight.w500),
                  tabs: const [
                    Tab(text: 'Inprocess'),
                    Tab(text: 'Completed'),
                    Tab(text: 'Cancelled'),
                  ],
                ),
              ),
              Expanded(
                child: SizedBox(
                  height: MediaQuery.of(context).size.height,
                  child: TabBarView(
                    controller: _tabController,
                    children: const [
                      InProgressWidget(),
                      CompletedWidget(),
                      CancelledWidget(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
