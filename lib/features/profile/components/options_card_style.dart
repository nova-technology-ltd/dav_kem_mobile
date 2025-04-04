import 'package:dav_kem/utilities/constants/app_colors.dart';
import 'package:flutter/material.dart';

class OptionsCardStyle extends StatelessWidget {
  final VoidCallback onClick;
  final String title;
  final IconData iconData;
  const OptionsCardStyle({super.key, required this.onClick, required this.title, required this.iconData});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: GestureDetector(
        onTap: onClick,
        child: Container(
          height: 35,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Color(AppColors.primaryColorTwo).withOpacity(0.05),
            borderRadius: BorderRadius.circular(15)
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 5),
            child: Row(
              children: [
                Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                    color: Color(AppColors.primaryColorTwo).withOpacity(0.3),
                    shape: BoxShape.circle
                  ),
                  child: Center(
                    child: Icon(iconData, color: Color(AppColors.primaryColorTwo), size: 18,),
                  ),
                ),
                const SizedBox(width: 5,),
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: Color(AppColors.primaryColorTwo)
                  ),
                ),
                Spacer(),
                Icon(Icons.arrow_right_alt_rounded, color: Color(AppColors.primaryColorTwo), size: 18,)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
