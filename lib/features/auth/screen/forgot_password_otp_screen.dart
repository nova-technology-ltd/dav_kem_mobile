import 'package:dav_kem/features/auth/screen/forgot_password_reset_password_screen.dart';
import 'package:flutter/material.dart';

import '../../../utilities/constants/app_colors.dart';
import '../../../utilities/shared_components/custom_button.dart';
import '../../../utilities/shared_components/custom_text_field.dart';

class ForgotPasswordOtpScreen extends StatefulWidget {
  const ForgotPasswordOtpScreen({super.key});

  @override
  State<ForgotPasswordOtpScreen> createState() => _ForgotPasswordOtpScreenState();
}

class _ForgotPasswordOtpScreenState extends State<ForgotPasswordOtpScreen> {
  final TextEditingController _otpController = TextEditingController();
  Color _otpLabelColor = Colors.grey;
  FocusNode _otpFocusNode = FocusNode();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Align(
              alignment: Alignment.topLeft,
              child: Transform.rotate(
                angle: 2.6,
                child: SizedBox(
                    height: 200,
                    child: Image.asset("images/chef-restaurant-menu-waiter-beauty-chef-5c14f250b71bc59922494ef46e2d8834.png")),
              )),
          Align(
              alignment: Alignment.bottomRight,
              child: SizedBox(
                  height: 200,
                  child: Image.asset("images/chef-restaurant-menu-waiter-beauty-chef-5c14f250b71bc59922494ef46e2d8834.png"))),
          Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              surfaceTintColor: Colors.transparent,
              foregroundColor: Color(AppColors.primaryColorTwo),
            ),
            body: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("OTP", style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500
                  ),),
                  Text("Please type in the otp sent to demouser@gmail.com.",
                    // textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey
                    ),),
                  const SizedBox(height: 20,),
                  CustomTextField(
                    controller: _otpController,
                    label: "OTP",
                    labelColor: _otpLabelColor,
                    hintText: "0000",
                    focusNode: _otpFocusNode, isObscure: false,
                  ),
                  const SizedBox(height: 15),
                  CustomButton(title: "Verify OTP", onClick: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => const ForgotPasswordResetPasswordScreen()));
                  }, isLoading: false),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
