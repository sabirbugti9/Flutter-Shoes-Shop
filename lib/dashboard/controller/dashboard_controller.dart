import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../../model.dart';

class DashboardController extends GetxController {
  RxList<Shoe> shoes = <Shoe>[].obs;

  Future<void> _loadShoes() async {
    String jsonString = await rootBundle.loadString('assets/shoes.json');

    shoes.value = Shoe.fromJsonList(jsonString);
  }

  @override
  void onInit() {
    _loadShoes();
    super.onInit();
  }
}
