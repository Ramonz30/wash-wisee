import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants/constant.dart';
import 'address_management_screen.dart';

class PaymentMethod extends StatelessWidget {
  const PaymentMethod({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        automaticallyImplyLeading: false,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Center(
            child: SvgPicture.asset(
              SvgIcon.backIcon,
              height: 28,
              width: 28,
            ),
          ),
        ),
        title: Text(
          'Payment method',
          style: GoogleFonts.livvic(
            fontWeight: FontWeight.w600,
            fontSize: 18,
            color: Colors.black,
            letterSpacing: 0.5,
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 24,
                ),
                Text(
                  'Card details',
                  style: GoogleFonts.livvic(
                      fontWeight: FontWeight.w500, fontSize: 16),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  'Select default payment method below.',
                  style: GoogleFonts.livvic(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      height: 1.4,
                      color: const Color(0xFF828280)),
                ),
                const SizedBox(
                  height: 15,
                ),
                const AddressDetailsTile(
                  title: 'Visa ending in 1234',
                  text: 'Expiry 06/2024',
                  value: true,
                  imagePath: SvgIcon.visaIcon,
                ),
                const SizedBox(
                  height: 15,
                ),
                const AddressDetailsTile(
                  title: 'Mastercard 1234',
                  text: 'Expiry 06/2024',
                  value: false,
                  imagePath: SvgIcon.masterCardIcon,
                ),
                const SizedBox(
                  height: 15,
                ),
                const Row(
                  children: [
                    Icon(Icons.add, color: AppColors.primary),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Add new address',
                      style: TextStyle(color: AppColors.primary),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  'Billing history',
                  style: GoogleFonts.livvic(
                      fontWeight: FontWeight.w500, fontSize: 16),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  'Access all your previous invoices.',
                  style: GoogleFonts.livvic(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      height: 1.4,
                      color: const Color(0xFF828280)),
                ),
                const SizedBox(
                  height: 25,
                ),
                Container(
                  // width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Colors.grey.shade300),
                  ),
                  child: Column(
                    children: [
                      Container(
                        height: 60,
                        width: double.infinity,
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(8),
                            topRight: Radius.circular(8),
                          ),
                          color: Color(0xffEFEFEF),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Invoice',
                              style: GoogleFonts.livvic(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                color: AppColors.primary,
                              ),
                            ),
                            Text(
                              'Billing date',
                              style: GoogleFonts.livvic(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                color: AppColors.primary,
                              ),
                            ),
                          ],
                        ),
                      ),
                      invoiceTile(),
                      customDivider(),
                      invoiceTile(),
                      customDivider(),
                      invoiceTile(),
                      customDivider(),
                      invoiceTile(),
                      customDivider(),
                      invoiceTile(),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget customDivider() {
    return Container(
      height: 1,
      color: Colors.grey.withOpacity(0.5),
    );
  }

  Widget invoiceTile() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      child: Row(
        children: [
          CircleAvatar(
            radius: 20,
            backgroundColor: const Color(0xffEFEFEF),
            child: SvgPicture.asset(
              SvgIcon.docIcon,
              height: 20,
              width: 20,
            ),
          ),
          const SizedBox(
            width: 12,
          ),
          Text(
            'Invoice #007 – Dec 2022',
            style: GoogleFonts.livvic(
              fontWeight: FontWeight.w400,
              fontSize: 13,
              color: Colors.black,
            ),
          ),
          const Spacer(),
          Text(
            'Dec 1, 2022',
            style: GoogleFonts.livvic(
              fontWeight: FontWeight.w400,
              fontSize: 13,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
