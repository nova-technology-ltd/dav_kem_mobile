import 'package:dav_kem/features/auth/screen/forgot_password_otp_screen.dart';
import 'package:dav_kem/utilities/constants/app_colors.dart';
import 'package:flutter/material.dart';

import '../../../utilities/shared_components/custom_button.dart';
import '../../../utilities/shared_components/custom_text_field.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  Color _passwordLabelColor = Colors.grey;
  Color _emailLabelColor = Colors.grey;
  FocusNode _emailFocusNode = FocusNode();
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
                  Text("Forgot Password?", style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500
                  ),),
                  Text("Forgot account password? don't worry, it usually happens, please provide the email of your registered account to get an otp for password resetting.",
                    // textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey
                    ),),
                  const SizedBox(height: 20,),
                  CustomTextField(
                    controller: _emailController,
                    label: "Email",
                    labelColor: _emailLabelColor,
                    hintText: "examplemail@gmail.com",
                    focusNode: _emailFocusNode, isObscure: false,
                  ),
                  const SizedBox(height: 15),
                  CustomButton(title: "Send OTP", onClick: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => const ForgotPasswordOtpScreen()));
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
