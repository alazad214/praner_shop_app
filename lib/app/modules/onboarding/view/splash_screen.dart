import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:praner_shop/app/modules/main/views/main_screen.dart';
import 'package:praner_shop/core/routes/app_routes.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    checkToken();
  }

  void checkToken() async {
    final prefs = await SharedPreferences.getInstance();
    final userToken = prefs.getString('userToken');

    await Future.delayed(const Duration(seconds: 3), () {
      if (userToken != null) {
        Get.off(() => const MainScreen());
      } else {
        Get.offNamed(AppRoutes.onboarding);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Image.asset(
            'assets/logo/logo.png',
            width: screenSize.width / 3,
          ),
        ),
      ),
    );
  }
}
