import 'package:flutter/material.dart';
import 'package:flutter_shop_concept_ui/dashboard/controller/dashboard_controller.dart';
import 'package:flutter_shop_concept_ui/dashboard/widget/ad_card_widget.dart';
import 'package:flutter_shop_concept_ui/dashboard/widget/product_card_widget.dart';
import 'package:flutter_shop_concept_ui/utils.dart';
import 'package:get/get.dart';
import '../widget/custom_app_bar.dart';

class DashboardPage extends StatelessWidget {
  DashboardPage({super.key});

  final DashboardController controller = Get.put(DashboardController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade200,
        toolbarHeight: 0,
      ),
      backgroundColor: Colors.grey.shade200,
      body: SingleChildScrollView(
        child: SafeArea(child: Column(
          children: [
            MyAppBar(),
            Column(
              children: [
        MarchText(),
        HoriScroll(),
        SizedBox(height: app_margin,),
        TrendingText(),
              ],
            ),
            Obx(() => controller.shoes.isEmpty?NoProducts():ProductList(controller: controller),),
          ],
        )),
      ),
     
    );
  }
}





























class ProductList extends StatelessWidget {
  const ProductList({
    super.key,
    required this.controller,
  });

  final DashboardController controller;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: controller.shoes.length,
      itemBuilder: (context, index) {
        var shoe = controller.shoes[index];
        return ProductCardWidget(shoe: shoe);
      },
    );
  }
}

class NoProducts extends StatelessWidget {
  const NoProducts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Padding(
        padding: EdgeInsets.all(20.0),
        child: Text(
          'No products available',
          style: TextStyle(fontSize: 18, color: Colors.grey),
        ),
      ),
    );
  }
}

class TrendingText extends StatelessWidget {
  const TrendingText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(app_margin),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Text(
            'Trends:',
            style: TextStyle(
                fontSize: 25, fontWeight: FontWeight.bold, letterSpacing: 2),
          ),
          Text(
            'see more',
            style: TextStyle(
                fontSize: 15, fontWeight: FontWeight.bold, color: Colors.grey),
          ),
        ],
      ),
    );
  }
}

class HoriScroll extends StatelessWidget {
  const HoriScroll({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: ListView(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        children: [
          AdsCardWidget(
            color: Colors.grey,
            text: 'Nike Air Zoom Pegasus 39',
            imagePath: 'assets/shoe1.png',
            price: '250 \$',
          ),
          AdsCardWidget(
            color: Colors.yellow,
            text: 'Nike Air Zoom Pegasus 39',
            imagePath: 'assets/shoe2.png',
            price: '200 \$',
          ),
        ],
      ),
    );
  }
}

class MarchText extends StatelessWidget {
  const MarchText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(app_margin),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Text(
            'March Offers:',
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, letterSpacing: 2),
          ),
          Text(
            'See more',
            style: TextStyle(
                fontSize: 15, fontWeight: FontWeight.bold, color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
