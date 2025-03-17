import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_shop_concept_ui/utils.dart';
import 'package:get/get.dart';

class AdsCardWidget extends StatelessWidget {
  AdsCardWidget(
      {super.key, this.color, required this.text, required this.imagePath, required this.price});
  final String price;
  final Color? color;
  final String text;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    final baseColor = color ?? Colors.yellow.shade300;

    return Directionality(
      textDirection: TextDirection.ltr,
      child: Container(
        margin: EdgeInsets.only(top: 25,left: 10,right: 10),
        width: Get.width - app_margin * 5,
               child: Stack(
          clipBehavior: Clip.none,
          children: [
            // Background container with decoration
            Positioned.fill(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: baseColor,
                ),
              ),
            ),


            // Content
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      Text(
                        text,
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      Text(
                        price,
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,color: Colors.green.shade800),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child:Text('+ 30% OFF',style: TextStyle(color: Colors.white),),
                      )
                    ],
                  ),
                ),
              ],
            ).animate()
                .move(begin: Offset(40, 0), end: Offset(0, 0), duration: Duration(milliseconds: 500)),

            // Image
            Positioned(
                top: -25,
                right: 0,
                child: Image.asset(
                  imagePath,
                  height: 100,
                  width: 100,
                  fit: BoxFit.fill,
                ).animate()
                    .move(begin: Offset(40, 0), end: Offset(0, 0), duration: Duration(milliseconds: 500)),
            ),
          ],
        ),
      ),
    );
  }
}

// Add this extension to Color class for easier color manipulation
extension ColorExtension on Color {
  Color darker(int percent) {
    assert(1 <= percent && percent <= 100);
    var f = 1 - percent / 100;
    return Color.fromARGB(
      alpha,
      (red * f).round(),
      (green * f).round(),
      (blue * f).round(),
    );
  }
}