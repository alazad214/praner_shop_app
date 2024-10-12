import 'package:flutter/material.dart';
import 'package:praner_shop/widgets/dotted_divider.dart';
import '../../../../utils/app_defaults.dart';
import 'item_row.dart';

class PriceAndItem extends StatelessWidget {
  const PriceAndItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(AppDefaults.padding),
      child: Column(
        children: [
          ItemRow(
            title: 'Total Item',
            value: '6',
          ),
          ItemRow(
            title: 'Single Item',
            value: '\$ 10.00',
          ),
          DottedDivider(),
          ItemRow(
            title: 'Total Price',
            value: '\$ 60.00',
          ),
        ],
      ),
    );
  }
}
