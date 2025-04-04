import 'package:dav_kem/features/feeds/screen/all_food_view_screen.dart';
import 'package:dav_kem/utilities/constants/app_colors.dart';
import 'package:dav_kem/utilities/shared_components/custom_button.dart';
import 'package:dav_kem/utilities/shared_components/read_more_text.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

import '../components/items_section.dart';

class ViewFoodScreen extends StatefulWidget {
  final String productImage;
  const ViewFoodScreen({super.key, required this.productImage});

  @override
  State<ViewFoodScreen> createState() => _ViewFoodScreenState();
}

class _ViewFoodScreenState extends State<ViewFoodScreen> {
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
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(
                flex: 4,
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(),
                  child: Image.asset(widget.productImage, fit: BoxFit.cover,),
                ),
              ),
              Expanded(
                flex: 6,
                child: SizedBox(
                ),
              )
            ],
          ),
          Column(
            children: [
              Expanded(
                flex: 4,
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(),
                  child: SafeArea(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          GestureDetector(
                            onTap: (){
                              Navigator.pop(context);
                            },
                            child: Container(
                              height: 45,
                              width: 45,
                              decoration: BoxDecoration(
                                color: Color(AppColors.primaryColorTwo),
                                shape: BoxShape.circle
                              ),
                              child: Icon(Icons.arrow_back, color: Colors.white, size: 20,),
                            ),
                          ),
                          Spacer(),
                          Container(
                            height: 25,
                            width: 65,
                            decoration: BoxDecoration(
                              color: Color(AppColors.primaryColor),
                              borderRadius: BorderRadius.circular(8)
                            ),
                            child: Center(
                              child: Text(
                                "Details",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12
                                ),
                              ),
                            ),
                          ),
                          Spacer(),
                        ]
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 7,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10))
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Text(
                                  "Fried Rice & Turkey",
                                  style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.w500
                                  ),
                                ),
                              ),
                              Row(
                                children: [
                                  Icon(IconlyBold.star, color: Colors.orange, size: 20,),
                                  Text(
                                    "4.5",
                                    style: TextStyle(
                                      color: Colors.orange,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        const SizedBox(height: 10,),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Text(
                            "Details",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: ReadMoreText(longText: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Curabitur pretium tincidunt lacus. Nulla gravida orci a odio. Nullam varius, turpis et commodo pharetra, est eros bibendum elit, nec luctus magna felis sollicitudin mauris. Integer in mauris eu nibh euismod gravida. Duis ac tellus et risus vulputate vehicula. Donec lobortis risus a elit. Etiam tempor. Ut ullamcorper, ligula eu tempor congue, eros est euismod turpis, id tincidunt sapien risus a quam. Maecenas fermentum consequat mi. Donec fermentum. Pellentesque malesuada nulla a mi. Duis sapien sem, aliquet nec, commodo eget, consequat quis, neque. Aliquam faucibus, elit ut dictum aliquet, felis nisl adipiscing sapien, sed malesuada diam lacus eget erat. Cras mollis scelerisque nunc. Nullam arcu. Aliquam consequat. Curabitur augue lorem, dapibus non, congue vel, mollis nec, libero. In hac habitasse platea dictumst. Pellentesque sed augue. Fusce nec tellus sed augue semper porta. Mauris massa. Vestibulum lacinia arcu eget nulla. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur sodales ligula in libero. Sed dignissim lacinia nunc.", maxLength: 250,),
                        ),
                        const SizedBox(height: 10,),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Text(
                            "Ingredient",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500
                            ),
                          ),
                        ),
                        const SizedBox(height: 5,),
                        RecipeWidget(recipe: "Salt"),
                        RecipeWidget(recipe: "Salt"),
                        RecipeWidget(recipe: "Pepper"),
                        RecipeWidget(recipe: "Onion"),
                        RecipeWidget(recipe: "Vegetables"),
                        RecipeWidget(recipe: "Groundnut Oil"),
                        RecipeWidget(recipe: "Red Oil"),
                        RecipeWidget(recipe: "Beef"),
                        RecipeWidget(recipe: "Rice"),
                        const SizedBox(height: 10,),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Review",
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500
                                    ),
                                  ),
                                  Text(
                                    "Here what people has to say about this food",
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.grey
                                    ),
                                  ),
                                ],
                              ),
                              GestureDetector(
                                onTap: (){
                                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => const AllFoodViewScreen()));
                                },
                                child: Container(
                                  decoration: BoxDecoration(),
                                  child: Row(
                                    children: [
                                      Text(
                                        "see all",
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Color(AppColors.primaryColor)
                                        ),
                                      ),
                                      Icon(Icons.arrow_right_alt_rounded, color: Color(AppColors.primaryColor),)
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
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
                        const SizedBox(height: 10,),
                        const SizedBox(height: 10,),
                        ItemsSection(
                          title: "Similar Category",
                          subMessage: 'hare are other items from this same category',
                        ),
                        const SizedBox(height: 10,),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: CustomButton(title: "Add to cart", onClick: (){}, isLoading: false),
      ),
    );
  }
}

class RecipeWidget extends StatelessWidget {
  final String recipe;
  const RecipeWidget({super.key, required this.recipe});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Row(
        children: [
          Container(
            height: 5,
            width: 5,
            decoration: BoxDecoration(
              color: Color(AppColors.primaryColor),
              shape: BoxShape.circle
            ),
          ),
          const SizedBox(width: 6,),
          Text(
            recipe,
            style: TextStyle(
              color: Color(AppColors.primaryColor),
              fontWeight: FontWeight.w500,
              fontSize: 11
            ),
          )
        ],
      ),
    );
  }
}
