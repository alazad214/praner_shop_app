import 'package:flutter/material.dart';
import '../../../../utils/app_colors.dart';
import '../../../../utils/app_defaults.dart';

class PopularCard extends StatelessWidget {
  const PopularCard(
      {super.key,
      this.category,
      this.stock,
      this.image,
      this.title,
      this.price,
      this.discountPrice,
      this.rating,
      this.ontap});

  final String? category;
  final String? stock;
  final String? image;
  final String? title;
  final String? price;
  final String? discountPrice;
  final double? rating;
  final ontap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      borderRadius: AppDefaults.borderRadius,
      child: Container(
        width: 170,
        margin: const EdgeInsets.only(left: 15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.black12),
        ),
        child: Stack(
          children: [
            // Main content
            Container(
              width: 200,
              margin: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Image
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 5, vertical: 2),
                      child: Image.network(
                        image ?? 'https://via.placeholder.com/150',
                        height: 100,
                        errorBuilder: (context, error, stackTrace) {
                          return const Icon(Icons.error);
                        },
                      ),
                    ),
                  ),
                  const SizedBox(height: 5),
                  // Category
                  Text(
                    category ?? 'N/A',
                    style: const TextStyle(
                      color: blackColor2,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 10),
                  // Title
                  Text(
                    title ?? 'N/A',
                    style: const TextStyle(
                      color: appColor7,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 10),
                  // Price and Discount
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "$price",
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            color: secondaryColor,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Flexible(
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            "$discountPrice",
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                              color: blackColor,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // Stock indicator
          ],
        ),
      ),
    );
  }
}
