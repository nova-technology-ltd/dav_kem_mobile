import 'package:dav_kem/features/feeds/screen/view_food_screen.dart';
import 'package:dav_kem/utilities/constants/app_colors.dart';
import 'package:flutter/material.dart';

class ItemCardStyle extends StatelessWidget {
  final String images;
  const ItemCardStyle({super.key, required this.images});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0),
      child: GestureDetector(
        onTap: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => ViewFoodScreen(productImage: images)));
        },
        child: Container(
          height: 180,
          width: 150,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(
            color: Colors.grey.withOpacity(0.05),
            borderRadius: BorderRadius.circular(10)
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Expanded(
                flex: 7,
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(

                  ),
                  child: Image.asset(images, fit: BoxFit.cover,),
                ),
              ),
              Expanded(
                flex: 3,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "Coconut Rice",
                        style: TextStyle(
                          fontSize: 12,
                          color: Color(AppColors.primaryColorTwo),
                          fontWeight: FontWeight.w500
                        ),
                      ),
                      Text(
                        "₦3,800",
                        style: TextStyle(
                          fontSize: 14,
                          color: Color(AppColors.primaryColor),
                          fontWeight: FontWeight.w400
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
