import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_shop_concept_ui/product/controller/product_controller.dart';
import 'package:flutter_shop_concept_ui/product/widgets/product_view_widget.dart';
import 'package:flutter_shop_concept_ui/utils.dart';
import 'package:get/get.dart';
import '../../model.dart';
import '../widgets/product_detail_widget.dart';
class ProductPage extends StatelessWidget {
   ProductPage({super.key});
  ProductController controller = Get.put(ProductController());
  @override
  Widget build(BuildContext context) {
    Shoe shoe = Get.arguments;
    return Scaffold(
      extendBody: true,
    body: Column(
      children: [
        ProductViewWidget(shoe: shoe),
        SizedBox(
          height: Get.height/12,
        ),
        ProductDetailWidget(shoe:shoe),

      ],
    ),
      bottomNavigationBar:  ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.all(app_margin/2),
          shape: RoundedRectangleBorder(),
          backgroundColor: Color(0xff3935FF),
        ),
        onPressed: () {
          controller.addToCardDialog(context, shoe);
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.add_shopping_cart_sharp,color: Colors.white,),
            SizedBox(width: 10,),
            Text(
              'Buy Some',
              style: TextStyle(
                  color: Colors.white,
                  letterSpacing: 2,
                  fontWeight: FontWeight.bold
              ),
            ),
          ],
        ),
      ).animate(onPlay: (controller) => controller.repeat()).shimmer(
          duration: const Duration(seconds: 1),
          delay:const Duration(milliseconds: 500)),
    );
  }
}
