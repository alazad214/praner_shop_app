import 'package:flutter/material.dart';
import 'package:praner_shop/utils/app_defaults.dart';


class TotalAmountAndPaidData extends StatelessWidget {
  const TotalAmountAndPaidData({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppDefaults.padding),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                'Total Amount',
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    fontWeight: FontWeight.bold, color: Colors.black),
              ),
              const Spacer(),
              Text(
                '\$120',
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    fontWeight: FontWeight.bold, color: Colors.black),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              Text(
                'Paid From',
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    fontWeight: FontWeight.bold, color: Colors.black),
              ),
              const Spacer(),
              Text(
                'Credit Card',
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    fontWeight: FontWeight.bold, color: Colors.black),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
