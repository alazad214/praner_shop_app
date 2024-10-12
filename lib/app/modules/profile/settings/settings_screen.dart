import 'package:flutter/material.dart';
import 'package:praner_shop/app/modules/profile/components/profile_list_tile.dart';
import 'package:praner_shop/utils/app_colors.dart';
import 'package:praner_shop/utils/app_icons.dart';
import 'package:praner_shop/widgets/app_back_button.dart';
import '../../../../utils/app_defaults.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const AppBackButton(),
        title: const Text(
          'Settings',
        ),
      ),
      backgroundColor: AppColors.cardColor,
      body: Container(
        margin: const EdgeInsets.all(AppDefaults.padding),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          color: AppColors.scaffoldBackground,
          borderRadius: AppDefaults.borderRadius,
        ),
        child: Column(
          children: [
            ProfileListTile(
                onTap: () {},
                icon: AppIcons.profilePerson,
                title: 'Notification'),
            ProfileListTile(
              onTap: () {},
              icon: AppIcons.profilePerson,
              title: 'Language',
            ),
            ProfileListTile(
                onTap: () {},
                icon: AppIcons.profilePerson,
                title: 'Change Password'),
            ProfileListTile(
                onTap: () {},
                icon: AppIcons.profilePerson,
                title: 'Delete Account'),
          ],
        ),
      ),
    );
  }
}
