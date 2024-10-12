import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:praner_shop/utils/app_colors.dart';
import 'package:praner_shop/utils/app_icons.dart';

import '../../../../utils/app_defaults.dart';
import '../controller/details_controller.dart';

class PriceAndQuantityRow extends StatelessWidget {
  final currentPrice;
  final discountPercent;

  PriceAndQuantityRow({
    super.key,
    this.currentPrice,
    this.discountPercent,
    required int quantity,
  });
  final QuantityController controller = Get.put(QuantityController());
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          '%${discountPercent!.toStringAsFixed(2)}',
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                color: Colors.black,
                fontWeight: FontWeight.bold,

              ),
        ),
        const SizedBox(width: AppDefaults.padding),
        Text(
          '\$${currentPrice!.toStringAsFixed(2)}',
          style: Theme.of(context)
              .textTheme
              .headlineSmall
              ?.copyWith(color: AppColors.primary, fontWeight: FontWeight.bold),
        ),
        const Spacer(),
        Row(
          children: [
            IconButton(
              onPressed: controller.increaseQuantity,
              icon: SvgPicture.asset(AppIcons.addQuantity),
              constraints: const BoxConstraints(),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Obx(
                () => Text(
                  '${controller.quantity.value}',
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                ),
              ),
            ),
            IconButton(
              onPressed: controller.decreaseQuantity,
              icon: SvgPicture.asset(AppIcons.removeQuantity),
              constraints: const BoxConstraints(),
            ),
          ],
        )
      ],
    );
  }
}
