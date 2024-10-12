import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:praner_shop/app/modules/main/views/main_screen.dart';
import 'package:praner_shop/core/api/api_url.dart';
import 'package:praner_shop/style/toast_style.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SignInController extends GetxController {
  final emailcontroller = TextEditingController().obs;
  final passcontroller = TextEditingController().obs;
  final formKey = GlobalKey<FormState>();

  saveToken(String token) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('userToken', token);
  }

  void userSignIn() async {
    try {
      final response = await http.post(
        Uri.parse(loginUrl),
        body: {
          'Email': emailcontroller.value.text,
          'Password': passcontroller.value.text,
        },
      );

      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        await saveToken(data['token']);
        Get.to(() => const MainScreen());
      } else {
        errorToast('Something Wrong');
      }
    } catch (e) {
      errorToast(e.toString());
    }
  }
}
