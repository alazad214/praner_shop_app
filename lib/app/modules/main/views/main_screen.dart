import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:praner_shop/app/modules/save/save_screen.dart';
import '../../../../utils/app_colors.dart';
import '../../../../utils/app_defaults.dart';
import '../../cart/views/cart_screen.dart';
import '../../home/views/home_screen.dart';
import '../../profile/profile/views/profile_screen.dart';
import '../components/app_navigation_bar.dart';
import '../controller/main_controller.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(MainController());

    /// All the pages
    List<Widget> pages = [
      HomeScreen(),
      const SaveScreen(),
      const CartScreen(leading: false,),
      const ProfileScreen(),
    ];

    return Scaffold(
      body: Obx(() {
        return PageTransitionSwitcher(
          transitionBuilder: (child, primaryAnimation, secondaryAnimation) {
            return SharedAxisTransition(
              animation: primaryAnimation,
              secondaryAnimation: secondaryAnimation,
              transitionType: SharedAxisTransitionType.horizontal,
              fillColor: AppColors.scaffoldBackground,
              child: child,
            );
          },
          duration: AppDefaults.duration,
          child: pages[controller.currentIndex.value],
        );
      }),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: Obx(() {
        return AppNavBar(
          currentIndex: controller.currentIndex.value,
          onNavTap: controller.navTap,
        );
      }),
    );
  }
}
