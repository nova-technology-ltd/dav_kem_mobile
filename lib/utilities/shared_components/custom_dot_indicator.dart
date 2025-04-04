import 'package:dav_kem/utilities/constants/app_colors.dart';
import 'package:flutter/material.dart';

class CustomDotIndicator extends StatelessWidget {
  final bool isActive;
  const CustomDotIndicator({super.key, required this.isActive});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 2.0),
      child: Container(
        height: 15,
        width: 15,
        decoration: BoxDecoration(
          color: isActive ? Color(AppColors.primaryColor) : Color(AppColors.primaryColorTwo).withOpacity(0.3),
          shape: BoxShape.circle
        ),
      ),
    );
  }
}
