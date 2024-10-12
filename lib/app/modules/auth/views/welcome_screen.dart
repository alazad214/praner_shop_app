import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:praner_shop/utils/app_config.dart';
import 'package:praner_shop/widgets/app_button.dart';
import '../../../../core/routes/app_routes.dart';
import '../../../../utils/app_colors.dart';
import '../../../../utils/app_icons.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          fit: StackFit.expand,
          children: [
            SvgPicture.asset(
              'assets/svg/bg.svg',
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                      width: MediaQuery.of(context).size.width / 2,
                      child: AspectRatio(
                          aspectRatio: 1 / 1,
                          child: Image.asset(AppConfig.appLogo))),
                  Column(
                    children: [
                      ///login account...
                      AppButton(
                        text: 'Login With Email',
                        bgColor: appColor5,
                        onTap: () => Get.toNamed(AppRoutes.login),
                      ),
                      const SizedBox(
                        height: 20,
                      ),

                      ///create account...
                      AppButton(
                        text: 'Create an account',
                        bgColor: Colors.black12,
                        textColor: Colors.black,
                        onTap: () => Get.toNamed(AppRoutes.signup),
                      ),

                      ///or login....
                      const SizedBox(height: 15),
                      Text(
                        'OR',
                        style: Theme.of(context)
                            .textTheme
                            .titleLarge
                            ?.copyWith(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 10),

                      ///social login....
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: SvgPicture.asset(AppIcons.appleIcon),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: SvgPicture.asset(AppIcons.googleIcon),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: SvgPicture.asset(AppIcons.facebookIcon),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
