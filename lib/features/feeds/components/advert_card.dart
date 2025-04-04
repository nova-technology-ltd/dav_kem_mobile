import 'package:dav_kem/utilities/constants/app_colors.dart';
import 'package:dav_kem/utilities/shared_components/custom_button.dart';
import 'package:flutter/material.dart';

class AdvertCard extends StatelessWidget {
  final String advertImage;
  final Color? color;
  const AdvertCard({super.key, required this.advertImage, this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Container(
        height: 150,
        width: MediaQuery.of(context).size.width,
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.circular(20)
        ),
        child: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(),
              child: Image.asset(advertImage, fit: BoxFit.cover,),
            ),
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                color: color?.withOpacity(0.4) ?? Colors.green.withOpacity(0.4),
                boxShadow: [
                  BoxShadow(
                    color: color?.withOpacity(0.4) ?? Colors.green.withOpacity(0.8),
                    offset: const Offset(180, 0),
                    blurRadius: 50,
                    spreadRadius: 20
                  )
                ]
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Ramadan Deals",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  Text(
                    "Get the best deals on your iftar meal at about 10% discount",
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.8),
                      fontSize: 12,
                    ),
                  ),
                  Spacer(),
                  CustomButton(title: "Explore", onClick: (){}, isLoading: false, width: 100, height: 40, fontSize: 12, bg: Color(AppColors.primaryColorTwo),)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
