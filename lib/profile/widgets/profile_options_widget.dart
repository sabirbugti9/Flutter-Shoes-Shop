import 'package:flutter/material.dart';
import 'package:flutter_shop_concept_ui/utils.dart';

class ProfileOptionsWidget extends StatelessWidget {
  const ProfileOptionsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(app_margin),
      child: Column(
        children: [
          SizedBox(
            height: app_margin * 2,
          ),
          Row(
            children: [
              Text(
                'log out',
                style: TextStyle(color: Colors.green.shade800,fontSize: 15,fontWeight: FontWeight.bold),
              )
            ],
          ),
          SizedBox(
            height: app_margin,
          ),
          Row(
            children: [
              Text(
                'Privacy policy',
                style: TextStyle(color: Colors.deepPurple,fontSize: 15),
              ),
              SizedBox(width: 10,),
              Container(
                width: 2,
                height: 25,
                color: Colors.black,
              ),
              SizedBox(width: 10,),
              Text(
                'Terms and conditions',
                style: TextStyle(color: Colors.deepPurple,fontSize: 15),
              ),
            ],
          ),
          SizedBox(
            height: app_margin,
          ),
          Row(
            children: [
              Text(
                'Version 1.0.0.',
                style: TextStyle(color: Colors.black,fontSize: 15),
              )
            ],
          ),
          SizedBox(
            height: app_margin,
          ),
        ],
      ),
    );
  }
}
