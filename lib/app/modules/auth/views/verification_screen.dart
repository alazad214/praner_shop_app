import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:praner_shop/style/text_style.dart';
import 'package:praner_shop/utils/app_icons.dart';
import '../../../../core/routes/app_routes.dart';
import '../../../../utils/app_colors.dart';
import '../../../../utils/app_defaults.dart';
import '../../../../utils/app_images.dart';
import '../../../../widgets/app_button.dart';
import '../../../../widgets/network_image.dart';
import '../../../../widgets/app_dialog.dart';

class VerificationScreen extends StatelessWidget {
  const VerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldWithBoxBackground,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(AppDefaults.padding),
                  margin: const EdgeInsets.all(AppDefaults.margin),
                  decoration: BoxDecoration(
                    color: AppColors.scaffoldBackground,
                    borderRadius: AppDefaults.borderRadius,
                  ),
                  child: Column(
                    children: [
                      ///Title Header...
                      Text('Entry Your 4 digit code', style: appTextStyle2()),
                      const SizedBox(height: AppDefaults.padding),

                      ///Image...
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.4,
                        child: const AspectRatio(
                          aspectRatio: 1 / 1,
                          child: NetworkImageWithLoader(
                            AppImages.numberVerfication,
                          ),
                        ),
                      ),
                      const SizedBox(height: AppDefaults.padding * 3),

                      ///Input Field...
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SizedBox(
                            width: 55,
                            height: 68,
                            child: TextFormField(
                              onChanged: (v) {
                                if (v.length == 1) {
                                  FocusScope.of(context).nextFocus();
                                } else {
                                  FocusScope.of(context).previousFocus();
                                }
                              },
                              textAlign: TextAlign.center,
                              style: Theme.of(context)
                                  .textTheme
                                  .titleLarge
                                  ?.copyWith(
                                    fontWeight: FontWeight.bold,
                                  ),
                              inputFormatters: [
                                LengthLimitingTextInputFormatter(1),
                                FilteringTextInputFormatter.digitsOnly,
                              ],
                              keyboardType: TextInputType.number,
                            ),
                          ),
                          SizedBox(
                            width: 55,
                            height: 68,
                            child: TextFormField(
                              onChanged: (v) {
                                if (v.length == 1) {
                                  FocusScope.of(context).nextFocus();
                                } else {
                                  FocusScope.of(context).previousFocus();
                                }
                              },
                              textAlign: TextAlign.center,
                              style: Theme.of(context)
                                  .textTheme
                                  .titleLarge
                                  ?.copyWith(
                                    fontWeight: FontWeight.bold,
                                  ),
                              inputFormatters: [
                                LengthLimitingTextInputFormatter(1),
                                FilteringTextInputFormatter.digitsOnly,
                              ],
                              keyboardType: TextInputType.number,
                            ),
                          ),
                          SizedBox(
                            width: 55,
                            height: 68,
                            child: TextFormField(
                              onChanged: (v) {
                                if (v.length == 1) {
                                  FocusScope.of(context).nextFocus();
                                } else {
                                  FocusScope.of(context).previousFocus();
                                }
                              },
                              textAlign: TextAlign.center,
                              style: Theme.of(context)
                                  .textTheme
                                  .titleLarge
                                  ?.copyWith(
                                    fontWeight: FontWeight.bold,
                                  ),
                              inputFormatters: [
                                LengthLimitingTextInputFormatter(1),
                                FilteringTextInputFormatter.digitsOnly,
                              ],
                              keyboardType: TextInputType.number,
                            ),
                          ),
                          SizedBox(
                            width: 55,
                            height: 68,
                            child: TextFormField(
                              onChanged: (v) {
                                if (v.length == 1) {
                                  FocusScope.of(context).nextFocus();
                                } else {
                                  FocusScope.of(context).previousFocus();
                                }
                              },
                              textAlign: TextAlign.center,
                              style: Theme.of(context)
                                  .textTheme
                                  .titleLarge
                                  ?.copyWith(
                                    fontWeight: FontWeight.bold,
                                  ),
                              inputFormatters: [
                                LengthLimitingTextInputFormatter(1),
                                FilteringTextInputFormatter.digitsOnly,
                              ],
                              keyboardType: TextInputType.number,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: AppDefaults.padding * 3),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text('Did you don\'t get code?'),
                          TextButton(
                            onPressed: () {},
                            child: const Text('Resend'),
                          ),
                        ],
                      ),
                      const SizedBox(height: AppDefaults.padding),
                      AppButton(
                        text: 'Send',
                        onTap: () {
                          appDialog(
                              context,
                              Image.network(
                                AppImages.verified,
                              ),
                              "Varified",
                              '',
                              'Open App',
                              () {});
                        },
                      ),
                      const SizedBox(height: AppDefaults.padding),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
