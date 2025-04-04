import 'package:dav_kem/utilities/constants/app_colors.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String label;
  final Color labelColor;
  final String hintText;
  final FocusNode focusNode;
  final bool isObscure;
  final suffixIcon;
  const CustomTextField({super.key, required this.controller, required this.label, required this.labelColor, required this.hintText, required this.focusNode, required this.isObscure, this.suffixIcon});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: TextFormField(
        cursorHeight: 16,
        focusNode: focusNode,
        obscureText: isObscure,
        cursorColor: Color(AppColors.primaryColor),
        decoration: InputDecoration(
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.grey, width: 1)
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Color(AppColors.primaryColor), width: 1)
          ),
          hintText: hintText,
          labelStyle: TextStyle(
            color: labelColor,
            fontSize: 13
          ),
          focusColor: Color(AppColors.primaryColor),
          labelText: label,
          hintStyle: TextStyle(
            fontSize: 12
          ),
          suffixIcon: suffixIcon
        ),
      ),
    );
  }
}
