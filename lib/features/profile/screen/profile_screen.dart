import 'package:dav_kem/features/profile/components/options_card_style.dart';
import 'package:dav_kem/features/profile/screen/payment_options_screen.dart';
import 'package:dav_kem/features/profile/screen/security_settings_screen.dart';
import 'package:dav_kem/utilities/constants/app_colors.dart';
import 'package:dav_kem/utilities/constants/app_icons.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topLeft,
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
              automaticallyImplyLeading: false,
              backgroundColor: Colors.transparent,
              surfaceTintColor: Colors.transparent,
              centerTitle: true,
              title: const Text(
                "My Profile",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500
                ),
              ),
              actions: [
                IconButton(onPressed: (){}, icon: Icon(Icons.logout_rounded, color: Color(AppColors.primaryColor), size: 20,))
              ],
            ),
            body: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 80,
                          width: 80,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                              color: Colors.grey[200],
                              shape: BoxShape.circle
                          ),
                          child: Stack(
                            children: [
                              Container(
                                height: MediaQuery.of(context).size.height,
                                width: MediaQuery.of(context).size.width,
                                decoration: BoxDecoration(
                                    color: Colors.grey[200],
                                    shape: BoxShape.circle
                                ),
                                child: Image.asset("images/e042a9f188d5b51a7691a099d2fe6728.jpg", fit: BoxFit.cover,),
                              ),
                              Container(
                                height: MediaQuery.of(context).size.height,
                                width: MediaQuery.of(context).size.width,
                                decoration: BoxDecoration(
                                    color: Colors.black.withOpacity(0.2),
                                    shape: BoxShape.circle
                                ),
                                child: Center(
                                  child: Icon(IconlyBold.camera, color: Colors.grey,),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 10,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Sufyan Sani Mohammed",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500
                                  ),
                                ),
                                Text(
                                  "safianumoney100@gmail.com",
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.grey
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 10,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      "₦570,000",
                                      style: TextStyle(
                                          color: Color(AppColors.primaryColor),
                                          fontSize: 11
                                      ),
                                    ),
                                    Text(
                                      "Total Spent",
                                      style: TextStyle(
                                          color: Color(AppColors.primaryColorTwo),
                                          fontSize: 11,
                                          fontWeight: FontWeight.w500
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                                  child: Container(
                                    height: 30,
                                    width: 1.2,
                                    decoration: BoxDecoration(
                                        color: Colors.grey[300]
                                    ),
                                  ),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      "30",
                                      style: TextStyle(
                                          color: Color(AppColors.primaryColor),
                                          fontSize: 11
                                      ),
                                    ),
                                    Text(
                                      "Total Ordered",
                                      style: TextStyle(
                                          color: Color(AppColors.primaryColorTwo),
                                          fontSize: 11,
                                          fontWeight: FontWeight.w500
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                                  child: Container(
                                    height: 30,
                                    width: 1.2,
                                    decoration: BoxDecoration(
                                        color: Colors.grey[300]
                                    ),
                                  ),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      "16",
                                      style: TextStyle(
                                          color: Color(AppColors.primaryColor),
                                          fontSize: 11
                                      ),
                                    ),
                                    Text(
                                      "Total Review",
                                      style: TextStyle(
                                          color: Color(AppColors.primaryColorTwo),
                                          fontSize: 11,
                                          fontWeight: FontWeight.w500
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                    Divider(
                      color: Colors.grey.withOpacity(0.3),
                    ),
                    const SizedBox(height: 10,),
                    Container(
                      height: 60,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          color: Color(AppColors.primaryColor),
                          borderRadius: BorderRadius.circular(15)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
                        child: Stack(
                          children: [
                            Align(
                              alignment: Alignment.centerRight,
                              child: SizedBox(
                                height: 80,
                                width: 80,
                                child: Image.asset(AppIcons.companyLogo),
                              ),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Available Balance",
                                  style: TextStyle(
                                      fontSize: 11,
                                      color: Colors.white
                                  ),
                                ),
                                RichText(text: TextSpan(
                                    children: [
                                      TextSpan(
                                          text: "NGN",
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold
                                          )
                                      ),
                                      TextSpan(
                                          text: "12,000",
                                          style: TextStyle(
                                              fontSize: 18,
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold
                                          )
                                      ),
                                    ]
                                ))
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 10,),
                    Text("Quick Actions", style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500
                    ),),
                    Text("Here are more of what you can do.", style: TextStyle(
                        fontSize: 11,
                        color: Colors.grey
                    ),),
                    OptionsCardStyle(onClick: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => const PaymentOptionsScreen()));
                    }, title: "Payment Options", iconData: Icons.payment),
                    OptionsCardStyle(onClick: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => const SecuritySettingsScreen()));
                    }, title: "Security Settings", iconData: Icons.security),
                    OptionsCardStyle(onClick: (){}, title: "Orders", iconData: Icons.history),
                    OptionsCardStyle(onClick: (){}, title: "Terms & Conditions", iconData: Icons.rule),
                  ],
                ),
              ),
            ),
            floatingActionButton: Padding(
              padding: const EdgeInsets.only(bottom: 100.0),
              child: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    color: Colors.green,
                    shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      blurRadius: 10,
                      spreadRadius: 5,
                      offset: const Offset(2, 5)
                    )
                  ]
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: SizedBox(
                    height: 10,
                      width: 10,
                      child: Image.asset("images/whatsapp.png", color: Colors.white,)),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
