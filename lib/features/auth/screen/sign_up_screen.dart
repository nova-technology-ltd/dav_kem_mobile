import 'package:flutter/material.dart';

import '../../../utilities/constants/app_colors.dart';
import '../../../utilities/shared_components/custom_button.dart';
import '../../../utilities/shared_components/custom_text_field.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _otherNamesController = TextEditingController();
  final TextEditingController _phoneNumberController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  FocusNode _firstNameFocusNode = FocusNode();
  FocusNode _lastNameFocusNode = FocusNode();
  FocusNode _otherNameFocusNode = FocusNode();
  FocusNode _phoneNumberFocusNode = FocusNode();
  FocusNode _emailFocusNode = FocusNode();
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
            body: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Sign Up", style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500
                    ),),
                    Text("Seams like you don't have an account with us, please provide the required information below to get your account ready within seconds.",
                      // textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey
                      ),),
                    const SizedBox(height: 20,),
                    CustomTextField(
                      controller: _firstNameController,
                      label: "First Name",
                      labelColor: Color(AppColors.primaryColor),
                      hintText: "Please enter your first name",
                      focusNode: _firstNameFocusNode, isObscure: false,
                    ),
                    CustomTextField(
                      controller: _lastNameController,
                      label: "Last Name",
                      labelColor: Color(AppColors.primaryColor),
                      hintText: "Please enter your last name",
                      focusNode: _lastNameFocusNode, isObscure: false,
                    ),
                    CustomTextField(
                      controller: _otherNamesController,
                      label: "Other Names (optional)",
                      labelColor: Color(AppColors.primaryColor),
                      hintText: "Please enter any other name you have",
                      focusNode: _otherNameFocusNode, isObscure: false,
                    ),
                    CustomTextField(
                      controller: _phoneNumberController,
                      label: "Phone Number",
                      labelColor: Color(AppColors.primaryColor),
                      hintText: "+234 0000000",
                      focusNode: _phoneNumberFocusNode, isObscure: false,
                    ),
                    CustomTextField(
                      controller: _emailController,
                      label: "Email",
                      labelColor: Color(AppColors.primaryColor),
                      hintText: "examplemail@gmail.com",
                      focusNode: _emailFocusNode, isObscure: false,
                    ),
                    const SizedBox(height: 15),
                    CustomTextField(
                      controller: _passwordController,
                      label: "Password",
                      labelColor: Color(AppColors.primaryColor),
                      hintText: "*********",
                      focusNode: _passwordFocusNode, isObscure: isView ? true : false,
                      suffixIcon: IconButton(onPressed: (){
                        setState(() {
                          isView = !isView;
                        });
                      }, icon: Icon(isView ? Icons.remove_red_eye_rounded : Icons.remove_red_eye_outlined, size: 18, color: Color(AppColors.primaryColor),),),
                    ),
                    const SizedBox(height: 15),
                  ],
                ),
              ),
            ),
            bottomNavigationBar: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: CustomButton(title: "Sign Up", onClick: () {}, isLoading: false),
            ),
          ),
        ],
      ),
    );
  }
}
