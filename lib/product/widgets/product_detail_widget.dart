import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_shop_concept_ui/utils.dart';
import 'package:get/get.dart';
import '../../model.dart';

class ProductDetailWidget extends StatelessWidget {
  ProductDetailWidget({super.key, required this.shoe});

  final Shoe shoe;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Get.height / 2 - Get.height / 7,
      child: Stack(
        children: [
          //Colored Container
          Positioned(
            bottom: 0,
            left: 0,
            child: Container(
              padding: EdgeInsets.all(app_margin),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      bottomRight: Radius.circular(20)),
                  color: Color(0xffd3d5fc)),
              width: Get.width / 5 * 3,
              height: Get.height / 2 - Get.height / 7,
              child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: Text(
                    shoe.description,
                    textAlign: TextAlign.center,
                    style: TextStyle(height: 1.5),
                  )),
            ),
          ),
          //Transportation detail
          Positioned(
            bottom: 0,
            right: 0,
            child: Container(
              padding: EdgeInsets.all(2),
              height: Get.height / 2 - Get.height / 7,
              width: Get.width / 5 * 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Policy Status: ',
                    style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),

                  ),
                  SizedBox(height: 10,),
                  PolicyWidget(
                    text: 'Returns & Refunds',
                    have: true,
                  ),
                  PolicyWidget(
                    text: 'Warranty Policy',
                    have: false,
                  ),
                  PolicyWidget(
                    text: 'Subscription Policy',
                    have: true,
                  ),
                  PolicyWidget(
                    text: 'Customization Policy',
                    have: false,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class PolicyWidget extends StatelessWidget {
  final String text;
  final bool have;

  const PolicyWidget({super.key, required this.text, required this.have});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          text,
          style: TextStyle(fontSize: 13),
        ),
        SizedBox(
          width: 1,
        ),
        Icon(
          have ? Icons.done : Icons.close,
          color: have ? Colors.green : Colors.red,
          size: 15,
        )
      ],
    );
  }
}
