import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import '../../auth/views/welcome_screen.dart';
import '../data/onboading_utils.dart';

class OnboardingController extends GetxController {
  RxInt currentPage = 0.obs;
  final pageController = PageController();
  List<Map<String, String>> items = OnboardingData.items;

  void goNext() {
    if (currentPage.value < items.length - 1) {
      pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.ease,
      );
    } else {
      gotoLoginSignUp();
    }
  }

  void onPageChanged(int index) {
    currentPage.value = index;
  }

  void gotoLoginSignUp() {
    Get.offAll(() => const WelcomeScreen());
  }

  @override
  void onClose() {
    pageController.dispose();
    super.onClose();
  }
}
