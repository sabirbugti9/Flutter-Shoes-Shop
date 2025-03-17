import 'package:flutter/material.dart';
import 'package:flutter_shop_concept_ui/profile/widgets/header_widget.dart';

import '../widgets/profile_help_widget.dart';
import '../widgets/profile_options_widget.dart';
import '../widgets/profile_settings_widget.dart';
import '../widgets/user_details_widget.dart';


class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            HeaderWidger(),
            UserDetailsWidget(),
            ProfileSettingsWidget(),
            ProfileHelpWidget(),
            ProfileOptionsWidget(),
          ],
        ),
      ),
    );
  }
}
