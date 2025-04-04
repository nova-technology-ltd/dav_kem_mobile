import 'package:dav_kem/utilities/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class FirstSearchScreen extends StatefulWidget {
  const FirstSearchScreen({super.key});

  @override
  State<FirstSearchScreen> createState() => _FirstSearchScreenState();
}

class _FirstSearchScreenState extends State<FirstSearchScreen>
    with TickerProviderStateMixin{
  final _searchItemController = TextEditingController();
  final FocusNode _searchFocusNode = FocusNode();
  late TabController _tabController;


  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
  }


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
              child: Image.asset("images/pngegg (9).png"),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: SizedBox(
              height: 180,
              width: 180,
              child: Image.asset("images/pngegg (8).png"),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: SizedBox(
              height: 180,
              width: 180,
              child: Image.asset("images/pngegg (1).png"),
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
              title: SizedBox(
                height: 45,
                child: TextFormField(
                  controller: _searchItemController,
                  focusNode: _searchFocusNode,
                  cursorColor: Color(AppColors.primaryColor),
                  cursorHeight: 15,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "search, food, drinks, bakery...",
                      hintStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 13
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.transparent)
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.transparent)
                      ),
                      prefixIcon: Icon(IconlyLight.search, color: Colors.grey, size: 20,),
                      filled: true,
                      fillColor: Color(AppColors.primaryColor).withOpacity(0.03)
                  ),
                ),
              ),
              bottom: _searchItemController.text.trim().isEmpty ? null : TabBar(
                controller: _tabController,
                dividerColor: Colors.grey.withOpacity(0.2),
                indicatorColor: const Color(AppColors.primaryColor),
                labelColor: const Color(AppColors.primaryColor),
                unselectedLabelColor: Colors.grey,
                isScrollable: true,
                indicatorPadding: const EdgeInsets.symmetric(vertical: 5),
                tabs: const [
                  Tab(text: "Rice"),
                  Tab(text: "Bakery"),
                  Tab(text: "Drinks"),
                  Tab(text: "Soups"),
                  Tab(text: "Snacks"),
                  Tab(text: "others"),
                ],
              ),
            ),
            body: TabBarView(
              controller: _tabController,
              children: [
                Center(
                  child: Column(
                    mainAxisAlignment:
                    MainAxisAlignment.center,
                    children: [
                      const Text("No result."),
                    ],
                  ),
                ),
                Center(
                  child: Column(
                    mainAxisAlignment:
                    MainAxisAlignment.center,
                    children: [
                      const Text("No result."),
                    ],
                  ),
                ),
                Center(
                  child: Column(
                    mainAxisAlignment:
                    MainAxisAlignment.center,
                    children: [
                      const Text("No result."),
                    ],
                  ),
                ),
                Center(
                  child: Column(
                    mainAxisAlignment:
                    MainAxisAlignment.center,
                    children: [
                      const Text("No result."),
                    ],
                  ),
                ),
                Center(
                  child: Column(
                    mainAxisAlignment:
                    MainAxisAlignment.center,
                    children: [
                      const Text("No result."),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
