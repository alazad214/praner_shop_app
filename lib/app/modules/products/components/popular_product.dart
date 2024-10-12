import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:praner_shop/app/modules/details/views/products_details.dart';
import 'package:praner_shop/app/modules/products/components/popular_card.dart';
import 'package:praner_shop/core/routes/app_routes.dart';
import 'package:praner_shop/widgets/title_and_seemore.dart';
import '../../../logic/controller/product/all_product_controller.dart';

class PopularProduct extends StatelessWidget {
  PopularProduct({super.key});
  final controller = Get.put(AllProductController());

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TitleAndSeeMore(
          title: 'Popular',
          onTap: () => Navigator.pushNamed(context, AppRoutes.popularItems),
        ),
        Obx(() {
          if (controller.isLoading.value) {
            return const Center(child: CircularProgressIndicator());
          }

          return GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 10,
              crossAxisSpacing: 2,
              childAspectRatio: 0.7,
            ),
            itemCount: controller.productsList.length,
            itemBuilder: (_, index) {
              final product = controller.productsList[index];
              return PopularCard(
                title: product.title ?? '',
                stock: "${product.stock}",
                image: product.thumbnail,
                price: '\$ ${product.price ?? ''}',
                category: product.category ?? '',
                discountPrice: "%${product.discountPercentage}",
                ontap: () {
                  Get.to(() => ProductDetails(
                        product: product,
                      ));
                },
              );
            },
          );
        }),
      ],
    );
  }
}
