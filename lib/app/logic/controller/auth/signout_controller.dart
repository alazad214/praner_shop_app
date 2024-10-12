import 'package:get/get.dart';
import 'package:praner_shop/app/modules/auth/views/welcome_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SignoutController extends GetxController {
  userSignout() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove('userToken');
    Get.offAll(() => const WelcomeScreen());
  }
}
