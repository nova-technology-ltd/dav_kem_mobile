import 'package:dav_kem/utilities/constants/app_colors.dart';
import 'package:flutter/material.dart';

class NotificationsItemCard extends StatelessWidget {
  const NotificationsItemCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5),
      child: Container(
        // height: 100,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.08),
          borderRadius: BorderRadius.circular(15)
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Order Placed Successfully",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Color(AppColors.primaryColor)
                      ),
                    ),
                    Text(
                      "your order has been successfully placed",
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey
                      ),
                    ),
                    Text(
                      "time: 20 Jan 2024",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 13,
                        fontWeight: FontWeight.w500
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(width: 10,),
              Container(
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Icon(Icons.image, color: Colors.grey,),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
