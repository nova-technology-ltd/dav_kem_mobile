import 'package:dav_kem/utilities/constants/app_colors.dart';
import 'package:dav_kem/utilities/constants/app_icons.dart';
import 'package:flutter/material.dart';

class SavedPaymentCardStyle extends StatelessWidget {
  const SavedPaymentCardStyle({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Container(
        height: 100,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Color(AppColors.primaryColor),
          borderRadius: BorderRadius.circular(15)
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "CARD HOLDER NAME",
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                          color: Colors.white.withOpacity(0.8)
                        ),
                      ),
                      Text(
                        "John Doe",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Colors.white.withOpacity(0.5)
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                      width: 100,
                      child: Image.asset(AppIcons.companyLogo))
                ],
              ),
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "CARD NUMBER",
                        style: TextStyle(
                          fontSize: 13,
                          color: Colors.white.withOpacity(0.8)
                        ),
                      ),
                      Text(
                        "00** **** **** **** **90",
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.white.withOpacity(0.5)
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "EXP",
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.white.withOpacity(0.8)
                        ),
                      ),
                      Text(
                        "00/00",
                        style: TextStyle(
                          fontSize: 11,
                          color: Colors.white.withOpacity(0.5)
                        ),
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
