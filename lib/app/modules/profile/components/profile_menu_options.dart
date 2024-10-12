import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:praner_shop/app/logic/controller/auth/signout_controller.dart';
import 'package:praner_shop/app/modules/profile/profile/views/profile_edit_screen.dart';
import 'package:praner_shop/app/modules/profile/settings/settings_screen.dart';
import 'package:praner_shop/core/routes/app_routes.dart';
import 'package:praner_shop/utils/app_defaults.dart';
import 'package:praner_shop/utils/app_icons.dart';
import 'package:praner_shop/widgets/app_dialog.dart';
import 'profile_list_tile.dart';

class ProfileMenuOptions extends StatelessWidget {
  ProfileMenuOptions({super.key});
  final controller = Get.put(SignoutController());

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(AppDefaults.padding),
      padding: const EdgeInsets.all(AppDefaults.padding),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: AppDefaults.boxShadow,
        borderRadius: AppDefaults.borderRadius,
      ),
      child: Column(
        children: [
          ProfileListTile(
              title: 'My Profile',
              icon: AppIcons.profilePerson,
              onTap: () => Get.to(() => const ProfileEditScreen())),
          ProfileListTile(
            title: 'Notification',
            icon: AppIcons.profileNotification,
            onTap: () => Navigator.pushNamed(context, AppRoutes.notifications),
          ),
          ProfileListTile(
            title: 'Setting',
            icon: AppIcons.profileSetting,
            onTap: () => Get.to(() => const SettingsScreen()),
          ),
          ProfileListTile(
              title: 'Logout',
              icon: AppIcons.profileLogout,
              onTap: () {
                appDialog(
                  context,
                  Image.asset('assets/logo/logo.png'),
                  'Do you want to logout?',
                  '',
                  "Log Out",
                  () {
                    controller.userSignout();
                  },
                );
              }),
        ],
      ),
    );
  }
}
