import 'package:dav_kem/utilities/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CartItemCard extends StatefulWidget {
  const CartItemCard({super.key});

  @override
  State<CartItemCard> createState() => _CartItemCardState();
}

class _CartItemCardState extends State<CartItemCard> {
  double _currentSliderValue = 1;
  double balance = 3800;
  @override
  Widget build(BuildContext context) {
    double foodPrice = balance * _currentSliderValue;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Container(
        height: 80,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.8),
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              offset: const Offset(1, 15),
              blurRadius: 20,
              spreadRadius: 5

            )
          ]
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 3),
          child: Row(
            children: [
              Container(
                height: 80,
                width: 80,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Image.asset("images/e0aeb8fb3c6ca03ffa6a7ff2e67095ee.jpg", fit: BoxFit.cover,),
              ),
              const SizedBox(width: 10,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Coconut-Rice & Chicken",
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w500
                    ),
                  ),
                  Text(
                    "₦${_formatPrice(foodPrice)}",
                    style: TextStyle(
                        fontSize: 12,
                        color: Color(AppColors.primaryColor)
                    ),
                  ),
                  SizedBox(
                    height: 25,
                    width: 200,
                    child: Slider(
                      value: _currentSliderValue,
                      min: 1,
                      max: 10,
                      divisions: 9,
                      activeColor: Color(AppColors.primaryColorTwo),
                      thumbColor: Color(AppColors.primaryColor),
                      label: _currentSliderValue.toString(),
                      onChanged: (double value) {
                        setState(() {
                          _currentSliderValue = value.round().toDouble(); // Force whole numbers
                        });
                      },)
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
  String _formatPrice(double price) {
    try {
      return _formatNumber(price);
    } catch (e) {
      print('Error formatting price: $e');
      return '0';
    }
  }

  String _formatNumber(double number) {
    NumberFormat formatter = NumberFormat("#,###");
    return formatter.format(number);
  }
}
