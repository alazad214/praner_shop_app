import 'package:flutter/material.dart';

import '../../../../utils/app_colors.dart';
import '../../../../utils/app_defaults.dart';


class CategoriesChip extends StatelessWidget {
  const CategoriesChip({
    super.key,
    required this.isActive,
    required this.label,
    required this.onPressed,
  });

  final bool isActive;
  final String label;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    // return Material(
    //   color: isActive ? AppColors.primary : null,
    //   borderRadius: BorderRadius.circular(4),
    //   child: InkWell(
    //     onTap: onPressed,
    //     borderRadius: BorderRadius.circular(4),
    //     child: Container(
    //       padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
    //       decoration: BoxDecoration(
    //         borderRadius: BorderRadius.circular(4),
    //         border: Border.all(color: AppColors.primary),
    //       ),
    //       child: Text(
    //         label,
    //         style: Theme.of(context).textTheme.bodyLarge?.copyWith(
    //               color: isActive ? Colors.white : null,
    //             ),
    //       ),
    //     ),
    //   ),
    // );
    return OutlinedButton(
      onPressed: () {},
      style: OutlinedButton.styleFrom(
        foregroundColor: isActive ? Colors.white : AppColors.placeholder,
        padding:
            const EdgeInsets.symmetric(horizontal: AppDefaults.padding * 1.5),
        minimumSize: const Size(40, 48),
        backgroundColor: isActive ? AppColors.primary : Colors.white,
        side: const BorderSide(color: AppColors.primary),
        textStyle: const TextStyle(
          fontWeight: FontWeight.normal,
        ),
      ),
      child: Text(label),
    );
  }
}
