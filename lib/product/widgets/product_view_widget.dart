import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_shop_concept_ui/utils.dart';
import 'package:get/get.dart';
import '../../model.dart';

class ProductViewWidget extends StatelessWidget {
  ProductViewWidget({super.key, required this.shoe});

  final Shoe shoe;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Get.height / 2,
      child: Stack(
        children: [
          //Colored Container
          Positioned(
            top: 0,
            right: 0,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      bottomLeft: Radius.circular(20)),
                  color: Color(0xfffcd495)),
              width: Get.width / 2,
              height: Get.height / 2,
            ),
          ),
          //Product Image
          Positioned(
              top: Get.width / 5,
              right: Get.width / 5,
              child: Hero(
                tag: shoe.id.toString(),
                child: Image.asset(
                  shoe.image,
                  height: Get.width / 2,
                  width: Get.width / 2,
                  fit: BoxFit.fill,
                ),
              )),
          //Options
          Positioned(
            top: app_margin * 2,
            left: app_margin * 2,
            child: Row(
              children: [
                InkWell(
                  onTap: () => Get.back(),
                  child: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.grey.shade200),
                    child: Icon(Icons.arrow_back),
                  ),
                ),
                SizedBox(
                  width: app_margin,
                ),
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.grey.shade200),
                  child: Icon(Icons.more_horiz),
                ),
              ],
            ),
          ),
          //ProductName
          Positioned(
              top: app_margin * 4.5,
              left: app_margin * 2,
              child: SizedBox(
                height: 300,
                  width: Get.width / 2 - app_margin * 2,
                  child: Text(
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    textDirection: TextDirection.ltr,
                    shoe.name,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ))).animate().move(
              begin: Offset(100, 0),
              end: Offset(0, 0),
              duration: Duration(milliseconds: 500)),
          //Pricing part
          Positioned(
            left: app_margin * 2,
            bottom: app_margin * 2,
            child: Row(
              children: [
                Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: app_margin, vertical: 5),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Column(
                    children: [
                      Text(
                        'Total Price',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      Text(
                        shoe.price.toString() + ' \$',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      Text(
                        '+ 30% OFF',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
