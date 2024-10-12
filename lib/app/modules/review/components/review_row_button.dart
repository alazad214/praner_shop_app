import 'package:flutter/material.dart';
import 'package:praner_shop/widgets/app_rating.dart';
import '../../../../utils/app_colors.dart';

class ReviewRowButton extends StatelessWidget {
  const ReviewRowButton({
    super.key,
    this.rating,
    this.ontap,
  });

  final rating;
  final ontap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Row(
        children: [
          Text(
            'Review',
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
          ),
          const Spacer(),
          InkWell(
            onTap: ontap,
            child: AppRating(
              score: rating,
            ),
          ),
          const Icon(
            Icons.arrow_forward_ios_rounded,
            size: 18,
            color: AppColors.placeholder,
          ),
        ],
      ),
    );
  }
}
