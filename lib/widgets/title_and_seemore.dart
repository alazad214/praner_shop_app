import 'package:flutter/material.dart';

import '../utils/app_colors.dart';
import '../utils/app_defaults.dart';

class TitleAndSeeMore extends StatelessWidget {
  const TitleAndSeeMore({
    super.key,
    required this.title,
    this.actionLabel,
    required this.onTap,
    this.isHeadline = true,
  });

  final String title;
  final String? actionLabel;
  final void Function() onTap;
  final bool isHeadline;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title,
              style: const TextStyle(
                  color: appColor7,
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold)),
          TextButton(
            onPressed: onTap,
            child: Text(actionLabel ?? 'See All', style: const TextStyle(
              color: appColor2
            ),),
          ),
        ],
      ),
    );
  }
}
