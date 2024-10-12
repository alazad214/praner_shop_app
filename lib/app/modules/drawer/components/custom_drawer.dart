import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:praner_shop/app/modules/drawer/views/about_screen.dart';
import 'package:praner_shop/app/modules/profile/settings/settings_screen.dart';
import '../../../../utils/app_colors.dart';
import '../../../../utils/app_images.dart';
import '../views/faq_screen.dart';
import '../views/help_screen.dart';
import '../views/terms_and_conditions_screen.dart';
import 'drawer_tile.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Drawer(
      backgroundColor: AppColors.scaffoldBackground,
      width: size.width / 1.5,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: ListView(
              padding: const EdgeInsets.only(top: 50),
              children: [
                Image.network(
                  AppImages.appLogo,
                  height: 100,
                ),
                const Divider(
                  color: appColor7,
                ),
                DrawerTile(
                  text: "Home",
                  textcolor: appColor7,
                  iconcolor: appColor7,
                  icon: Iconsax.home,
                  ontap: () {
                    Navigator.pop(context);
                  },
                ),
                DrawerTile(
                  text: "About Us",
                  icon: Icons.info_outline,
                  ontap: () {
                    Get.to(() => const AboutScreen());
                  },
                ),
                DrawerTile(
                  text: "FAQs",
                  icon: Icons.help_outline,
                  ontap: () {
                    Get.to(() => const FaqScreen());
                  },
                ),
                DrawerTile(
                  text: "Terms & Conditions",
                  icon: Icons.privacy_tip_outlined,
                  ontap: () {
                    Get.to(() => const TermsAndConditionsScreen());
                  },
                ),
                DrawerTile(
                  text: "Help Center",
                  icon: Icons.mail_outline,
                  ontap: () {
                    Get.to(() => const HelpScreen());
                  },
                ),
                DrawerTile(
                  text: "Rate This App",
                  icon: Icons.star_rate,
                  ontap: () {},
                ),
                DrawerTile(
                  text: "Contact Us",
                  icon: Icons.message_outlined,
                  ontap: () {},
                ),
                DrawerTile(
                  text: "Invite Friend",
                  icon: Icons.share,
                  ontap: () {},
                ),
              ],
            ),
          ),
          InkWell(
              onTap: () => Get.to(() => const SettingsScreen()),
              child: buildFooter(size.height)),
        ],
      ),
    );
  }

  Widget buildFooter(double h) {
    return Padding(
      padding: EdgeInsets.all(h * 0.02),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.settings_outlined, color: Colors.grey),
          SizedBox(width: h * 0.02),
          Text(
            "Settings",
            style: TextStyle(
              fontSize: h * 0.02,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
