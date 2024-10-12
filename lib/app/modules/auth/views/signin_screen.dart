import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:praner_shop/app/logic/controller/auth/signin_controller.dart';
import 'package:praner_shop/utils/validators.dart';
import 'package:praner_shop/widgets/app_button.dart';
import '../../../../core/routes/app_routes.dart';
import '../../../../utils/app_config.dart';
import '../../../../utils/app_defaults.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final controller = Get.put(SignInController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                  width: MediaQuery.of(context).size.width / 2,
                  child: AspectRatio(
                      aspectRatio: 1 / 1,
                      child: Image.asset(AppConfig.appLogo))),
              Form(
                key: controller.formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    /// email Field....
                    const Text("email"),
                    const SizedBox(height: 8),
                    TextFormField(
                      textInputAction: TextInputAction.next,
                      validator: Validator.email.call,
                      controller: controller.emailcontroller.value,
                    ),
                    const SizedBox(height: 15),

                    /// Password Field
                    const Text("Password"),
                    const SizedBox(height: 8),
                    TextFormField(
                      textInputAction: TextInputAction.done,
                      validator: Validator.required.call,
                      controller: controller.passcontroller.value,
                      obscureText: false,
                    ),

                    // Forget Password labelLarge
                    Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                            onPressed: () {
                              Navigator.pushNamed(
                                  context, AppRoutes.forgotPassword);
                            },
                            child: const Text('Forget Password?'))),

                    AppButton(
                        text: 'Login',
                        onTap: () {
                          if (controller.formKey.currentState!.validate()) {
                            controller.userSignIn();
                          }
                        })
                  ],
                ),
              ),
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Don\'t Have Account?'),
                  TextButton(
                    onPressed: () =>
                        Navigator.pushNamed(context, AppRoutes.signup),
                    child: const Text('Sign Up'),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
