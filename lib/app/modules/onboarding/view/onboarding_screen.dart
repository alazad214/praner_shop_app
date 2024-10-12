import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:praner_shop/utils/app_colors.dart';
import 'package:praner_shop/utils/app_defaults.dart';
import '../controller/onboading_controller.dart';
import '../widgets/onboading_card.dart';

class OnboardingScreen extends StatelessWidget {
  OnboardingScreen({super.key});

  final controller = Get.put(OnboardingController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 8,
              child: PageView.builder(
                onPageChanged: controller.onPageChanged,
                itemCount: controller.items.length,
                controller: controller.pageController,
                itemBuilder: (context, index) {
                  return OnboadingCard(
                    data: controller.items[index],
                  );
                },
              ),
            ),
            Stack(
              alignment: AlignmentDirectional.center,
              children: [
                Obx(() => TweenAnimationBuilder(
                      duration: AppDefaults.duration,
                      tween: Tween<double>(
                        begin: 0,
                        end: (1 / controller.items.length) *
                            (controller.currentPage.value + 1),
                      ),
                      builder: (context, double value, _) => SizedBox(
                        height: 70,
                        width: 70,
                        child: CircularProgressIndicator(
                          value: value,
                          strokeWidth: 6,
                          backgroundColor: AppColors.gray,
                          color: AppColors.primary,
                        ),
                      ),
                    )),
                ElevatedButton(
                  onPressed: controller.goNext,
                  style: ElevatedButton.styleFrom(shape: const CircleBorder()),
                  child: const Icon(Icons.arrow_forward),
                ),
              ],
            ),
            const SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}
