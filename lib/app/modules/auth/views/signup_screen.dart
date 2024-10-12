import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:praner_shop/style/text_style.dart';
import '../../../../core/routes/app_routes.dart';
import '../../../../utils/app_colors.dart';
import '../../../../utils/app_defaults.dart';
import '../../../../utils/app_icons.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldWithBoxBackground,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
                  ///Header Text...
                  Text('Welcome to our\nPraner Shop',
                      style: appTextStyle1(color: Colors.black)),
                  const SizedBox(height: AppDefaults.padding),

                  ///Sign up Form...
                  Container(
                    margin: const EdgeInsets.all(AppDefaults.margin),
                    padding: const EdgeInsets.all(AppDefaults.padding),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: AppDefaults.boxShadow,
                      borderRadius: AppDefaults.borderRadius,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ///User Name...
                        const Text("Name"),
                        const SizedBox(height: 8),
                        TextFormField(
                          textInputAction: TextInputAction.next,
                        ),

                        ///User Phone Number...
                        const Text("Phone Number"),
                        const SizedBox(height: 8),
                        TextFormField(
                          textInputAction: TextInputAction.next,
                          keyboardType: TextInputType.number,
                        ),

                        ///User Password...
                        const Text("Password"),
                        const SizedBox(height: 8),
                        TextFormField(
                          textInputAction: TextInputAction.next,
                          obscureText: true,
                          decoration: InputDecoration(
                            suffixIcon: Material(
                              color: Colors.transparent,
                              child: IconButton(
                                onPressed: () {},
                                icon: SvgPicture.asset(
                                  AppIcons.eye,
                                  width: 24,
                                ),
                              ),
                            ),
                          ),
                        ),

                        ///Signup Button...
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: AppDefaults.padding * 2),
                          child: Row(
                            children: [
                              Text(
                                'Sign Up',
                                style: Theme.of(context)
                                    .textTheme
                                    .titleLarge
                                    ?.copyWith(
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                              const Spacer(),
                              InkWell(
                                onTap: () {
                                  Navigator.pushNamed(
                                      context, AppRoutes.entryPoint);
                                },
                                child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 15, vertical: 12),
                                    decoration: BoxDecoration(
                                      color: AppColors.primary,
                                      borderRadius: BorderRadius.circular(6),
                                    ),
                                    child: const Center(
                                        child: Icon(Icons.arrow_forward,
                                            color: Colors.white))),
                              ),
                            ],
                          ),
                        ),

                        ///Already Have Account
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text('Already Have Account?'),
                            TextButton(
                                onPressed: () => Navigator.pushNamed(
                                    context, AppRoutes.login),
                                child: const Text('Log In')),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
