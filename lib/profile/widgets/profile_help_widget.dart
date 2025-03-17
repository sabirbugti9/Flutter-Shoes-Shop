import 'package:flutter/material.dart';
import 'package:flutter_shop_concept_ui/utils.dart';
import 'package:line_icons/line_icons.dart';

class ProfileHelpWidget extends StatelessWidget {
  const ProfileHelpWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(app_margin),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                'Help',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ],
          ),
          SizedBox(
            height: app_margin,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(Icons.question_mark,color: Colors.grey.shade700),
                  SizedBox(
                    width: app_margin,
                  ),
                  Text('FAQ')
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
                  Icon(Icons.message,color: Colors.grey.shade700),
                  SizedBox(
                    width: app_margin,
                  ),
                  Text('Support')
                ],
              ),
              Icon(
                Icons.arrow_forward_ios,
                size: 17,
                color: Colors.grey,
              )
            ],
          ),
        ]
      ),
    );
  }
}
