import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:laundry_app/constants/constant.dart';

class SettingslistTile extends StatelessWidget {
  const SettingslistTile({
    super.key,
    required this.svgPath,
    required this.title,
    this.onTap,
  });

  final String svgPath;
  final String title;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(width: 0.2),
        ),
        child: ListTile(
          onTap: onTap,
          leading: SizedBox(
            height: 20,
            width: 20,
            child: SvgPicture.asset(svgPath),
          ),
          title: Text(
            title,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          ),
          trailing: SizedBox(
            height: 20,
            width: 20,
            child: SvgPicture.asset(SvgIcon.action),
          ),
        ),
      ),
    );
  }
}
