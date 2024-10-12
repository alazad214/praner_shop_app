import 'package:flutter/material.dart';

import '../../../../../utils/app_colors.dart';
import '../../components/profile_header.dart';
import '../../components/profile_menu_options.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: AppColors.cardColor,
        child:  Column(
          children: [
            const ProfileHeader(),
            ProfileMenuOptions(),
          ],
        ),
      ),
    );
  }
}
