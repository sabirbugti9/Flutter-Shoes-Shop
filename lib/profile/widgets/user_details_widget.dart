import 'package:flutter/material.dart';
import 'package:flutter_shop_concept_ui/utils.dart';
import 'package:line_icons/line_icons.dart';

class UserDetailsWidget extends StatelessWidget {
  const UserDetailsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          backgroundColor: Color(0xff13979a),
          radius: 35,
          child: Text(
            'SK',
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
        SizedBox(
          height: app_margin / 2,
        ),
        Text(
          'Sabir Bugti',
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
        ),
        SizedBox(
          height: app_margin,
        ),
        Padding(
          padding: const EdgeInsets.all(app_margin),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(
                    LineIcons.calendar,
                    size: 22,
                  ),
                  SizedBox(
                    width: app_margin / 2,
                  ),
                  Text(
                    'My orders',
                    style: TextStyle(fontSize: 15),
                  )
                ],
              ),
              Icon(
                Icons.arrow_forward_ios,
                size: 17,
                color: Colors.grey,
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: app_margin),
          child: Divider(
            color: Colors.grey,
          ),
        )
      ],
    );
  }
}
