import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:praner_shop/app/modules/details/views/products_details.dart';
import 'package:praner_shop/app/modules/products/components/top_rated_card.dart';
import 'package:praner_shop/widgets/title_and_seemore.dart';
import '../../../logic/controller/product/top_rated_controller.dart';

class TopRatedProducts extends StatelessWidget {
  TopRatedProducts({super.key});
  final controller = Get.put(RatedProductController());

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TitleAndSeeMore(title: 'Top Rated', onTap: () {}),
        Obx(() {
          if (controller.isLoading.value) {
            return const Center(child: CircularProgressIndicator());
          }
          return SizedBox(
            height: 240,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: controller.ratedProducts.value.products?.length ?? 0,
              itemBuilder: (_, index) {
                final product = controller.ratedProducts.value.products![index];
                return TopRatedCard(
                  title: product.title ?? '',
                  category: product.category ?? '',
                  stock: "${product.stock ?? ""}",
                  image: product.thumbnail,
                  discrounprice: "${product.discountPercentage}",
                  price: "${product.price ?? ''}",
                  rating: product.rating,
                  ontap: () {
                    Get.to(() => ProductDetails(
                          product: product,
                        ));
                  },
                );
              },
            ),
          );
        }),
      ],
    );
  }
}
