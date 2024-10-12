import 'package:flutter/material.dart';
import 'package:praner_shop/utils/app_colors.dart';
import '../../../../utils/app_defaults.dart';

class TopRatedCard extends StatelessWidget {
  const TopRatedCard(
      {super.key,
      this.category,
      this.title,
      this.price,
      this.image,
      this.stock,
      this.discrounprice,
      this.rating,
      this.ontap});
  final category;
  final title;
  final price;
  final image;
  final stock;
  final discrounprice;
  final rating;
  final ontap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      borderRadius: AppDefaults.borderRadius,
      child: Container(
        width: 170,
        margin: const EdgeInsets.only(
          left: 15,
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.black12)),
        child: Stack(
          children: [
            Container(
              width: 170,
              margin: const EdgeInsets.all(10),
              decoration: const BoxDecoration(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.black12,
                        borderRadius: BorderRadius.circular(10)),
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 5, vertical: 2),
                      child: Image.network(
                        height: 100,
                        image ?? 'https://via.placeholder.com/150',
                        errorBuilder: (context, error, stackTrace) {
                          return const Icon(Icons.error);
                        },
                      ),
                    ),
                  ),
                  const SizedBox(height: 5),
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "\$ $price",
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            color: secondaryColor,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          "% $discrounprice",
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            color: blackColor,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
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
