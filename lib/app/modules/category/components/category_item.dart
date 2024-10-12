import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:icons_plus/icons_plus.dart';
import '../../../../utils/app_colors.dart';
import '../../../../widgets/title_and_seemore.dart';
import '../views/category_screen.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TitleAndSeeMore(
            title: 'Category',
            onTap: () => Get.to(() => const CategoryScreen())),
        SizedBox(
          height: 50,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  decoration: BoxDecoration(
                      color: secondaryColor,
                      borderRadius: BorderRadius.circular(30)),
                  child: const Row(
                    children: [
                      Icon(Iconsax.shopping_bag_bold,
                          size: 20, color: whiteColor),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'All Categories',
                        style: TextStyle(
                            color: whiteColor, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 10),
                for (int i = 0; i < 10; i++)
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 10),
                    margin: const EdgeInsets.only(left: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(color: Colors.black38)),
                    child: const Row(
                      children: [
                        Text(
                          'Computer',
                          style: TextStyle(
                              color: blackColor2, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
