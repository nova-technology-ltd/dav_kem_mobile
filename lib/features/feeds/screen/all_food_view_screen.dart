import 'package:dav_kem/utilities/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

import '../../../utilities/shared_components/read_more_text.dart';

class AllFoodViewScreen extends StatefulWidget {
  const AllFoodViewScreen({super.key});

  @override
  State<AllFoodViewScreen> createState() => _AllFoodViewScreenState();
}

class _AllFoodViewScreenState extends State<AllFoodViewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        foregroundColor: Color(AppColors.primaryColorTwo),
        centerTitle: true,
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.white,
        title: RichText(text: TextSpan(
          children: [
            TextSpan(
              text: "Reviews",
              style: TextStyle(
                color: Colors.black,
                fontSize: 14,
                fontWeight: FontWeight.w500
              )
            ),
            TextSpan(
              text: "(12)",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 12,
              )
            ),
          ]
        )),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10),
            child: Row(
              children: [
                Container(
                  height: 80,
                  width: 80,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(width: 1, color: Colors.grey.withOpacity(0.2)),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.withOpacity(0.1),
                            offset: const Offset(1, 1),
                            blurRadius: 20,
                            spreadRadius: 2
                        )
                      ]
                  ),
                  child: Center(
                    child: Text(
                      "4.5",
                      style: TextStyle(
                          fontSize: 25,
                          color: Color(AppColors.primaryColorTwo),
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 10,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    for (int i = 0; i < 5; i++)
                      Row(
                        children: [
                          for (int j = 0; j < 5 - i; j++)
                            Icon(IconlyBold.star, color: Color(AppColors.primaryColorTwo), size: 15,)
                        ],
                      )
                  ],
                )
              ],
            ),
          ),

          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  for (int i = 0; i < 3; i++)
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(15)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    height: 40,
                                    width: 40,
                                    clipBehavior: Clip.antiAlias,
                                    decoration: BoxDecoration(
                                        color: Colors.grey,
                                        shape: BoxShape.circle
                                    ),
                                    child: Image.asset("images/e042a9f188d5b51a7691a099d2fe6728.jpg", fit: BoxFit.cover,),
                                  ),
                                  const SizedBox(width: 6,),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Sufyan Sani Mohammed",
                                        style: TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.w500
                                        ),
                                      ),
                                      Text(
                                        "20, November",
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.grey
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                              ReadMoreText(longText: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est labor")
                            ],
                          ),
                        ),
                      ),
                    )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
