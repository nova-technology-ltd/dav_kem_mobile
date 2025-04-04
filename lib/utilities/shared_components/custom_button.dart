import 'package:dav_kem/utilities/constants/app_colors.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final Color? bg;
  final Color? textColor;
  final double? height;
  final double? width;
  final double? fontSize;
  final VoidCallback onClick;
  final bool isLoading;
  const CustomButton({super.key, required this.title, this.bg, required this.onClick, required this.isLoading, this.height, this.width, this.textColor, this.fontSize});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? 45,
      width: width ?? MediaQuery.of(context).size.width,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        color: bg ?? Color(AppColors.primaryColor),
        borderRadius: BorderRadius.circular(15)
      ),
      child: MaterialButton(onPressed: onClick, child: Text(
        title,
        style: TextStyle(
          color: textColor ?? Colors.white,
          fontSize: fontSize ?? 13
        ),
      ),),
    );
  }
}
