import 'package:flutter/material.dart';
import 'package:praner_shop/utils/app_colors.dart';
import 'package:praner_shop/utils/app_defaults.dart';


class AnimatedDots extends StatelessWidget {
  const AnimatedDots({
    super.key,
    required this.totalItems,
    required this.currentIndex,
  });

  final int totalItems;
  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        totalItems,
        (index) => AnimatedContainer(
          duration: AppDefaults.duration,
          height: 5,
          margin: const EdgeInsets.symmetric(horizontal: 4),
          width: currentIndex == index ? 25 : 15,
          decoration: BoxDecoration(
            color: currentIndex == index
                ? AppColors.primary
                : const Color(0xFF9FC5A6),
            borderRadius: AppDefaults.borderRadius,
          ),
        ),
      ),
    );
  }
}
