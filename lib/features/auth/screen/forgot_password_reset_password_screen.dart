import 'package:flutter/material.dart';

import '../../../utilities/constants/app_colors.dart';
import '../../../utilities/shared_components/custom_button.dart';
import '../../../utilities/shared_components/custom_text_field.dart';

class ForgotPasswordResetPasswordScreen extends StatefulWidget {
  const ForgotPasswordResetPasswordScreen({super.key});

  @override
  State<ForgotPasswordResetPasswordScreen> createState() => _ForgotPasswordResetPasswordScreenState();
}

class _ForgotPasswordResetPasswordScreenState extends State<ForgotPasswordResetPasswordScreen> {
  final TextEditingController _confirmPasswordController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  Color _passwordLabelColor = Colors.grey;
  Color _confirmPasswordLabelColor = Colors.grey;
  FocusNode _confirmPasswordFocusNode = FocusNode();
  FocusNode _passwordFocusNode = FocusNode();

  bool isView = false;
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
                  Text("Reset Password", style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500
                  ),),
                  Text("Provide a new password that you wont easily forget again..",
                    // textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey
                    ),),
                  const SizedBox(height: 20,),
                  CustomTextField(
                    controller: _passwordController,
                    label: "Password",
                    labelColor: _passwordLabelColor,
                    hintText: "*********",
                    focusNode: _passwordFocusNode, isObscure: isView ? true : false,
                    suffixIcon: IconButton(onPressed: (){
                      setState(() {
                        isView = !isView;
                      });
                    }, icon: Icon(isView ? Icons.remove_red_eye_rounded : Icons.remove_red_eye_outlined, size: 18, color: Color(AppColors.primaryColor),),),
                  ),
                  const SizedBox(height: 15),
                  CustomTextField(
                    controller: _confirmPasswordController,
                    label: "Confirm Password",
                    labelColor: _confirmPasswordLabelColor,
                    hintText: "*********",
                    focusNode: _confirmPasswordFocusNode, isObscure: isView ? true : false,
                    suffixIcon: IconButton(onPressed: (){
                      setState(() {
                        isView = !isView;
                      });
                    }, icon: Icon(isView ? Icons.remove_red_eye_rounded : Icons.remove_red_eye_outlined, size: 18, color: Color(AppColors.primaryColor),),),
                  ),
                  const SizedBox(height: 10),
                  const SizedBox(height: 15),
                  CustomButton(title: "Reset Password", onClick: () {}, isLoading: false),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
