import 'dart:math';

import 'package:dav_kem/features/feeds/components/advert_card.dart';
import 'package:dav_kem/features/feeds/components/items_section.dart';
import 'package:dav_kem/features/feeds/components/most_ordered_card_style.dart';
import 'package:dav_kem/features/feeds/components/special_offer_section.dart';
import 'package:dav_kem/features/feeds/screen/see_all_screen.dart';
import 'package:dav_kem/features/notification/screen/notification_screen.dart';
import 'package:dav_kem/utilities/constants/app_colors.dart';
import 'package:dav_kem/utilities/constants/app_icons.dart';
import 'package:dav_kem/utilities/shared_components/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class FeedScreen extends StatefulWidget {
  const FeedScreen({super.key});

  @override
  State<FeedScreen> createState() => _FeedScreenState();
}

class _FeedScreenState extends State<FeedScreen> {
  final demoFoods = [
    "images/0b252ddef25641bbee37318557546049.jpg",
    "images/2f38074be1d58c7fd6ec3ac0d1960e96.jpg",
    "images/03e984afeb479490cab605c39bfdac03.jpg",
    "images/6d14b1ce19c40adb9583840cb48007a2.jpg",
    "images/6dfd8a26330317383cbd2d41ee2fdbe2.jpg",
    "images/6e8e06d68f61799d57db9afdb4f10f17.jpg",
    "images/06f1c9a2b9d5aaa4b21e59088724377a.jpg",
    "images/7c9fd317fac17a9f0cb131a9c9c1b1bc.jpg",
    "images/8a9ed98addcc26ce328f09e27dfb577e.jpg",
    "images/8b8a7d68a43bc132e094853871d86045.jpg",
    "images/9d2df0bd79b8cfca0755eb50543124fc.jpg",
    "images/11d4eb52cd0f02cbee211cc7880aa9cd.jpg",
    "images/022aa1ab335071bde2408a005383f1d5.jpg",
    "images/33f4cf364851d9554b8c844dd46263fb.jpg",
    "images/063ebc1f1a169c2896cc98a0ea27b96f.jpg",
    "images/67e0f8bdbfce4aa33e9a8a6387a408ce.jpg",
    "images/72d9af964d384fc2a16fd087c1062a7c.jpg",
    "images/89a595c31358cb777a24494b36bc51a7.jpg",
    "images/98eb2c3278fd87bddbea8ac32de18504.jpg",
    "images/131f00d5e1ab04c59ec723df0cff7e62.jpg",
    "images/277a2ec62715b4cdc05483166f2d92e5.jpg",
    "images/414c9dd9a559d63e925d5a0cf8e5102f.jpg",
    "images/617e0a51a953f9e92d0d1681164d80f1.jpg",
    "images/688a4e12766dc933f04325f845386bcc.jpg",
    "images/788f114cbf4beeac2307109ac7c1e405.jpg",
    "images/788fb7f556efe0eb364b1f5c11aac753.jpg",
    "images/6251d0fbca39974e41bdaddc8b6346dd.jpg",
    "images/6898c1397b113837a77fda4fd4caace8.jpg",
    "images/19263c5f283887e2c6dd55dc11faaebc.jpg",
    "images/80755fce75daee7bae4fe526971fffd9.jpg",
    "images/87280df451fb5f31f546ae2ff4ff27fd.jpg",
    "images/632899f451ff11b101bac80647b24e98.jpg",
    "images/859352ce157d18bdabef67253b191300.jpg",
    "images/447983765e357b39237b7679fd152ec1.jpg",
    "images/705224454f5af8f2fc9854b9efaf6bcc.jpg",
    "images/62677928366b9edfcc49d5e6d0fc3852.jpg",
    "images/a931b8d6acf8c0c8155e0bff259d1c9a.jpg",
    "images/ac735894c64bd859b121e6c79b94e5d8.jpg",
    "images/ae903045e9678d655f59987ff0eeb77f.jpg",
    "images/be2131367cfd64c56f9828dbff188035.jpg",
    "images/c17efc40e12dcd7f1de735040856340c.jpg",
    "images/cd058ba8bf4c1fe050117382ca66007b.jpg",
    "images/d5d4bb7e8a83e3cc20f3383e4ca3e5c7.jpg",
    "images/d5d4bb7e8a83e3cc20f3383e4ca3e5c7 (1).jpg",
    "images/d033cba9a324ae3ce2ebf2e5d80940bf.jpg",
    "images/d88a49fbe2d1c43e78c0a2541cd1eb89.jpg",
    "images/dc5b48e465b9884f2b66dbdf4891a5a1.jpg",
    "images/e0aeb8fb3c6ca03ffa6a7ff2e67095ee.jpg",
    "images/ed570a6f22b600a81ca78da729d1fc28.jpg",
    "images/fc6ccf6314f207173840e9e368cc20b0.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(AppColors.primaryColor),
        surfaceTintColor: Color(AppColors.primaryColor),
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            Container(
              height: 35,
              width: 35,
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                color: Colors.grey[200],
                shape: BoxShape.circle
              ),
              child: Image.asset("images/e042a9f188d5b51a7691a099d2fe6728.jpg", fit: BoxFit.cover,),
            ),
            const SizedBox(width: 5,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Hello Aisha!",
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500, color: Colors.white),
                ),
                Text(
                  "What are we ordering today.",
                  style: TextStyle(fontSize: 11, color: Colors.white.withOpacity(0.8)),
                ),
              ],
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle
              ),
              child: IconButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => const NotificationScreen()));
                },
                icon: Icon(
                  IconlyBold.notification,
                  color: Color(AppColors.primaryColorTwo),
                  size: 20,
                ),
              ),
            ),
          ),
        ],
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 80),
                const SizedBox(height: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "DavKem Categories",
                            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                          ),
                          Text(
                            "Here are what we made sure you will love",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 12, color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Row(
                          children: [
                            for (int i = 0; i < 7; i++)
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 5.0),
                                child: Column(
                                  children: [
                                    Container(
                                      height: 50,
                                      width: 50,
                                      decoration: BoxDecoration(
                                          color: Colors.grey[200],
                                          shape: BoxShape.circle
                                      ),
                                    ),
                                    Text(
                                      "Cat Name",
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Color(AppColors.primaryColor),
                                          fontWeight: FontWeight.w500
                                      ),
                                    )
                                  ],
                                ),
                              )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 15),
                ItemsSection(
                  title: "Snacks",
                  subMessage: 'all snacks available here just for uou',
                ),
                const SizedBox(height: 15),
                Container(
                  height: 48,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(color: Color(AppColors.primaryColor)),
                  child: Stack(
                    children: [
                      Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(AppIcons.companyLogo),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8.0,
                          vertical: 5,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "5% Discount",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              "when you pay on site with the DavKem App",
                              style: TextStyle(color: Colors.white, fontSize: 11),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 15),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Most Ordered",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                "View items most loved by our customers.",
                                style: TextStyle(fontSize: 12, color: Colors.grey),
                              ),
                            ],
                          ),
                          GestureDetector(
                            onTap: (){
                              Navigator.of(context).push(MaterialPageRoute(builder: (context) => SeeAllScreen(title: "Most Ordered",)));
                            },
                            child: Container(
                              child: Row(
                                children: [
                                  Text(
                                    "see all",
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Color(AppColors.primaryColor),
                                    ),
                                  ),
                                  Icon(
                                    Icons.arrow_right_alt_rounded,
                                    color: Color(AppColors.primaryColor),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Row(
                          children: [
                            for (int i = 0; i < 7; i++) MostOrderedCardStyle(images: demoFoods[Random().nextInt(demoFoods.length)],),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 15),
                ItemsSection(
                  title: "Soups",
                  subMessage: 'let\'s go native with you.',
                ),
                const SizedBox(height: 10),
                AdvertCard(advertImage: "images/6d14b1ce19c40adb9583840cb48007a2.jpg",),
                const SizedBox(height: 10),
                ItemsSection(
                  title: "Bakery",
                  subMessage: 'have a good time with the snack from DavKem',
                ),
                const SizedBox(height: 10),
                SpecialOfferSection(),
                const SizedBox(height: 10),
                ItemsSection(
                  title: "Drinks",
                  subMessage: 'Get them cold and refreshing',
                ),
                const SizedBox(height: 15),
                Column(
                  children: [
                    Text(
                      "Locate DavKem",
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "Looking forward for a good time outside? easily locate our branches at your location",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                    Container(
                      height: 180,
                      width: MediaQuery.of(context).size.width,
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(color: Colors.grey[200]),
                      child: Stack(
                        children: [
                          Container(
                            height: 180,
                            width: MediaQuery.of(context).size.width,
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(color: Colors.grey[200]),
                            child: Image.asset("images/a064165ad78693bf0bd239712642a000.jpg", fit: BoxFit.cover,),
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10.0),
                              child: CustomButton(title: "Find Us", onClick: (){}, isLoading: false, width: 150, bg: Color(AppColors.primaryColor).withOpacity(0.2), textColor: Color(AppColors.primaryColor),),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 15),
                ItemsSection(
                  title: "Rice",
                  subMessage: 'checkout our top notch rice',
                ),
                const SizedBox(height: 10),
                ItemsSection(
                  title: "Others",
                  subMessage: 'we serve, chicken, fish etc',
                ),
              ],
            ),
          ),

          Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: 70,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Color(AppColors.primaryColor),
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), bottomRight: Radius.circular(10))
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Container(
                      height: 45,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Row(
                          children: [
                            Icon(IconlyLight.search, color: Colors.white),
                            const SizedBox(width: 10),
                            Text(
                              "Search food, snacks, drinks....",
                              style: TextStyle(fontSize: 13, color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
