import 'package:flutter/material.dart';
import 'package:praner_shop/core/routes/app_routes.dart';
import 'package:praner_shop/utils/app_colors.dart';
import 'package:praner_shop/widgets/app_back_button.dart';
import 'package:praner_shop/widgets/network_image.dart';

import '../../../utils/app_defaults.dart';


class SubmitReviewPage extends StatelessWidget {
  const SubmitReviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const AppBackButton(),
        title: const Text('Submit Review'),
      ),
      backgroundColor: AppColors.cardColor,
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.all(AppDefaults.padding),
          padding: const EdgeInsets.symmetric(
            horizontal: AppDefaults.padding,
            vertical: AppDefaults.padding * 2,
          ),
          decoration: BoxDecoration(
            color: AppColors.scaffoldBackground,
            borderRadius: AppDefaults.borderRadius,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                width: 100,
                height: 100,
                child: AspectRatio(
                  aspectRatio: 1 / 1,
                  child:
                      NetworkImageWithLoader('https://i.imgur.com/aMo2GQb.png'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(AppDefaults.padding),
                child: Text(
                  'How would you rate the\nquality of this Products',
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  5,
                  (index) => const Icon(
                    Icons.star_rounded,
                    color: Color(0xFFFFC107),
                    size: 30,
                  ),
                ),
              ),
              const SizedBox(height: AppDefaults.padding * 3),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Leave a your valuable\ncomments',
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ),
              const SizedBox(height: AppDefaults.padding * 2),
              const TextField(
                maxLines: 10,
              ),
              const SizedBox(height: AppDefaults.padding * 2),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, AppRoutes.review);
                  },
                  child: const Text('Submit'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
