import 'package:flutter/material.dart';
import 'package:flutter_shop_concept_ui/utils.dart';
import 'package:get/get.dart';

class HeaderWidger extends StatelessWidget {
  const HeaderWidger({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: Column(
        children: [
          Text(
            'My Profile',
            style: TextStyle(color: Colors.grey, fontSize: 15),
          ),
          Divider(),
        ],
      ),
    );
  }
}
