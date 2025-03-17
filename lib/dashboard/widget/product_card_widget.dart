import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_shop_concept_ui/product/view/product.dart';
import 'package:flutter_shop_concept_ui/utils.dart';
import 'package:get/get.dart';

import '../../model.dart';

class ProductCardWidget extends StatelessWidget {
  final Shoe shoe;

  const ProductCardWidget({super.key, required this.shoe});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.to(()=>ProductPage(), arguments: shoe),
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Stack(
          children: [
            Container(
              width: Get.width - app_margin * 2,
              margin: EdgeInsets.only(top: 10, bottom: 10, left: 10),
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    bottomLeft: Radius.circular(20.0)),
                color: Colors.green.shade100,
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            shoe.name,
                            style: TextStyle(fontSize: 16),
                          ),
                          Text(
                            shoe.price.toString() + ' \$',
                            textDirection: TextDirection.ltr,
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                          SizedBox(
                            width: Get.width / 2,
                            child: Text(
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              textDirection: TextDirection.ltr,
                              shoe.description.toString(),
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.w200),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
                top: -0,
                right: 0,
                child: Container(
                  child: Hero(
                    tag: shoe.id.toString(),
                    child: Image.asset(
                      shoe.image,
                      height: 130,
                      width: 130,
                      fit: BoxFit.contain,
                    ),
                  ),
                )),
          ],
        ),
      ).animate().move(
          begin: Offset(Get.width - app_margin * 2, 0),
          end: Offset(0, 0),
          duration: Duration(milliseconds: 500)),
    );
  }
}
