import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_shop_concept_ui/utils.dart';
import 'package:get/get.dart';
import 'package:line_icons/line_icons.dart';

class ProfileSettingsWidget extends StatelessWidget {
  const ProfileSettingsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(app_margin),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                'Settings',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ],
          ),
          SizedBox(
            height: app_margin,
          ),
          //UserProfile
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(

                children: [
                  Icon(LineIcons.user,color: Colors.grey.shade700),
                  SizedBox(
                    width: app_margin,
                  ),
                  Text('User Profile')
                ],
              ),
              Icon(
                Icons.arrow_forward_ios,
                size: 17,
                color: Colors.grey,
              )
            ],
          ),
          SizedBox(height: app_margin*2,),
          //Notifications
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(Icons.notifications_outlined,color: Colors.grey.shade700,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('Allow push notifications'),
                      SizedBox(
                        width: Get.width/5*3,
                        child: Text(
                          'Get updates on your sales, purchases, and key activities',
                          style: TextStyle(color: Colors.grey, fontSize: 12
                          ),
                          maxLines: 2,
                        ),
                      )
                    ],
                  ),
                ],
              ),
              Switch(value: true, onChanged: (v){

              }),
            ],
          ),
          SizedBox(height: app_margin*2,),
          //Pay methods
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(LineIcons.paypal,color: Colors.grey.shade700),
                  SizedBox(
                    width: app_margin,
                  ),
                  Text('Payment methods')
                ],
              ),
              Icon(
                Icons.arrow_forward_ios,
                size: 17,
                color: Colors.grey,
              )
            ],
          ),
          SizedBox(height: app_margin*2,),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(Icons.location_on_outlined,color: Colors.grey.shade700),
                  SizedBox(
                    width: app_margin,
                  ),
                  Text('Delivery address')
                ],
              ),
              Icon(
                Icons.arrow_forward_ios,
                size: 17,
                color: Colors.grey,
              )
            ],
          ),
          SizedBox(height: app_margin*2,),
          Divider(),
        ],
      ),
    );
  }
}
