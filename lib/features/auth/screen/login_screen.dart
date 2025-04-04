import 'package:dav_kem/features/auth/screen/forgot_password_screen.dart';
import 'package:dav_kem/features/auth/screen/sign_up_screen.dart';
import 'package:dav_kem/features/feeds/screen/feed_screen.dart';
import 'package:dav_kem/utilities/constants/app_colors.dart';
import 'package:dav_kem/utilities/constants/app_icons.dart';
import 'package:dav_kem/utilities/shared_components/bottom_sheet/main_panel.dart';
import 'package:dav_kem/utilities/shared_components/custom_button.dart';
import 'package:dav_kem/utilities/shared_components/custom_text_field.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  Color _passwordLabelColor = Colors.grey;
  Color _emailLabelColor = Colors.grey;
  FocusNode _emailFocusNode = FocusNode();
  FocusNode _passwordFocusNode = FocusNode();

  @override
  void dispose() {
    _emailFocusNode.removeListener(_onFocusChange);
    _emailFocusNode.dispose();
    super.dispose();
  }

  void _onFocusChange() {
    setState(() {
      _emailLabelColor =
          _emailFocusNode.hasFocus ? Color(AppColors.primaryColor) : Colors.grey;
    });
  }

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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Login", style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500
                ),),
                Text("Let's take care of your breakfast, lunch and dinner if you don't mind.",
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
                const SizedBox(height: 10),
                Align(
                  alignment: Alignment.centerRight,
                  child: GestureDetector(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => const ForgotPasswordScreen()));
                    },
                    child: Text(
                      "Forgot Password?",
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(AppColors.primaryColorTwo),
                        fontWeight: FontWeight.w500
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                CustomButton(title: "Login", onClick: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => const MainPanel()));
                }, isLoading: false),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: GestureDetector(
        onTap: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => const SignUpScreen()));
        },
        child: RichText(
          textAlign: TextAlign.center,
            text: TextSpan(
              children: [
                TextSpan(
                    text: "Don't have an account? ",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 13
                    )
                ),
                TextSpan(
                    text: "Register",
                    style: TextStyle(
                        color: Color(AppColors.primaryColor),
                        fontSize: 13
                    )
                )
              ]
            ),
        ),
      ),
    );
  }
}
