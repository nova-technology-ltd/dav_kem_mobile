import 'package:dav_kem/utilities/constants/app_colors.dart';
import 'package:dav_kem/utilities/shared_components/custom_button.dart';
import 'package:dav_kem/utilities/shared_components/custom_text_field.dart';
import 'package:flutter/material.dart';

class SecuritySettingsScreen extends StatefulWidget {
  const SecuritySettingsScreen({super.key});

  @override
  State<SecuritySettingsScreen> createState() => _SecuritySettingsScreenState();
}

class _SecuritySettingsScreenState extends State<SecuritySettingsScreen> {
  final _olfPasswordController = TextEditingController();
  final _newPasswordController = TextEditingController();
  final _confirmNewPasswordController = TextEditingController();
  final FocusNode _confirmNewPasswordFocusNode = FocusNode();
  FocusNode _newPasswordFocusNode = FocusNode();
  FocusNode _oldPasswordFocusNode = FocusNode();
  bool isView = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: SizedBox(
              height: 180,
              width: 180,
              child: Image.asset("images/pngegg (5).png"),
            ),
          ),
          Positioned(
            right: -28,
            bottom: 10,
            child: SizedBox(
              height: 180,
              width: 180,
              child: Image.asset("images/pngegg (4).png"),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.6)
            ),
          ),
          Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              surfaceTintColor: Colors.transparent,
              centerTitle: true,
              foregroundColor: Color(AppColors.primaryColorTwo),
              title: const Text(
                "Security Settings",
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.black,
                  fontWeight: FontWeight.w500
                ),
              ),
            ),
            body: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Column(
                children: [
                  CustomTextField(
                    controller: _olfPasswordController,
                    label: "Old Password",
                    labelColor: Color(AppColors.primaryColor),
                    hintText: "*********",
                    focusNode: _oldPasswordFocusNode, isObscure: isView ? true : false,
                    suffixIcon: IconButton(onPressed: (){
                      setState(() {
                        isView = !isView;
                      });
                    }, icon: Icon(isView ? Icons.remove_red_eye_rounded : Icons.remove_red_eye_outlined, size: 18, color: Color(AppColors.primaryColor),),),
                  ),
                  const SizedBox(height: 15,),
                  CustomTextField(
                    controller: _newPasswordController,
                    label: "New Password",
                    labelColor: Color(AppColors.primaryColor),
                    hintText: "*********",
                    focusNode: _newPasswordFocusNode, isObscure: isView ? true : false,
                    suffixIcon: IconButton(onPressed: (){
                      setState(() {
                        isView = !isView;
                      });
                    }, icon: Icon(isView ? Icons.remove_red_eye_rounded : Icons.remove_red_eye_outlined, size: 18, color: Color(AppColors.primaryColor),),),
                  ),
                  const SizedBox(height: 15,),
                  CustomTextField(
                    controller: _confirmNewPasswordController,
                    label: "Confirm New Password",
                    labelColor: Color(AppColors.primaryColor),
                    hintText: "*********",
                    focusNode: _confirmNewPasswordFocusNode, isObscure: isView ? true : false,
                    suffixIcon: IconButton(onPressed: (){
                      setState(() {
                        isView = !isView;
                      });
                    }, icon: Icon(isView ? Icons.remove_red_eye_rounded : Icons.remove_red_eye_outlined, size: 18, color: Color(AppColors.primaryColor),),),
                  ),

                ],
              ),
            ),
            bottomNavigationBar: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: CustomButton(title: "Change Password", onClick: (){}, isLoading: false),
            ),
          )
        ],
      ),
    );
  }
}
