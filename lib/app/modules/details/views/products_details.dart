import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:praner_shop/app/modules/details/components/details_image_favorite.dart';
import 'package:praner_shop/app/modules/details/views/review_screen.dart';
import 'package:praner_shop/utils/app_colors.dart';
import 'package:praner_shop/widgets/app_back_button.dart';
import 'package:praner_shop/app/modules/details/components/buy_now_row_button.dart';
import 'package:praner_shop/app/modules/details/components/price_and_quantity.dart';
import 'package:praner_shop/app/modules/review/components/review_row_button.dart';
import '../../../../utils/app_defaults.dart';
import '../../../logic/model/all_product_model.dart';
import '../components/brand_stock_weight.dart';

class ProductDetails extends StatelessWidget {
  final Products? product;
  const ProductDetails({super.key, this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const AppBackButton(),
        title: const Text('Product Details'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            DetailsImageFavorite(
              image: product!.thumbnail ?? "",
            ),
            Padding(
              padding: const EdgeInsets.all(AppDefaults.padding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ///Category...
                  Text(product!.category ?? '',
                      style: const TextStyle(
                        color: blackColor2,
                      )),

                  ///Title...
                  Text(
                    product!.title ?? '',
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),

                  ///Price  & Quantity...
                  PriceAndQuantityRow(
                    quantity: 2,
                    currentPrice: product!.price ?? '',
                    discountPercent: product!.discountPercentage ?? '',
                  ),
                  const SizedBox(height: 10),

                  ///brand, stock, weight...
                  BrandStockWeight(
                    brand: product!.brand ?? '',
                    stock: "${product!.stock ?? ''}",
                    weight: "${product!.weight ?? ''}",
                  ),
                  const Divider(),

                  ///description...
                  Text(product!.description ?? ''),
                  const SizedBox(
                    height: 20,
                  ),

                  ReviewRowButton(
                    rating: product!.rating ?? "",
                    ontap: () {
                      Get.to(() => ReviewScreen(
                            product: product,
                          ));
                    },
                  ),
                  const Divider(thickness: 0.1),
                  Text("Warrenty- ${product!.warrantyInformation ?? ''}"),
                  Text("Status- ${product!.availabilityStatus ?? ''}"),
                  Text("Return Policy- ${product!.returnPolicy ?? ''}"),
                  BuyNowRow(
                    onBuyButtonTap: () {},
                    onCartButtonTap: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
