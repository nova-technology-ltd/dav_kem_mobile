import 'package:dav_kem/features/cart/components/cart_item_card.dart';
import 'package:dav_kem/utilities/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topRight,
            child: SizedBox(
              height: 180,
              width: 180,
              child: Image.asset("images/pngegg (5).png"),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: SizedBox(
              height: 180,
              width: 180,
              child: Image.asset("images/pngegg.png"),
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
              surfaceTintColor: Colors.white,
              centerTitle: true,
              automaticallyImplyLeading: false,
              title: const Text("Cart", style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500
              ),),
            ),
            body: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Column(
                  children: [
                    for (int i = 0; i < 5; i++)
                      CartItemCard()
                  ],
                ),
              ),
            ),
          )
        ],
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(vertical: 80.0),
        child: Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            color: Color(AppColors.primaryColorTwo),
            shape: BoxShape.circle
          ),
          child: Center(
            child: Icon(Icons.send_to_mobile_rounded, color: Colors.white, size: 20,),
          ),
        ),
      ),
    );
  }
}
