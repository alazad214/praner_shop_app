import 'package:flutter/material.dart';
import '../../../../../utils/app_colors.dart';
import '../../../../../utils/app_defaults.dart';
import '../../../../../widgets/app_back_button.dart';
import '../components/order_details_statuses.dart';
import '../components/order_details_total_amount_and_paid.dart';
import '../components/order_details_total_order_product_details.dart';

class OrderDetailsPage extends StatelessWidget {
  const OrderDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.cardColor,
      appBar: AppBar(
        leading: const AppBackButton(),
        title: const Text('Order Details'),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(AppDefaults.margin),
          padding: EdgeInsets.all(AppDefaults.padding),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: AppDefaults.borderRadius,
          ),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Order id #30398505202',
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      fontWeight: FontWeight.bold, color: Colors.black),
                ),
              ),
              const SizedBox(height: AppDefaults.padding),
              const OrderStatusColumn(),
              const TotalOrderProductDetails(),
              const TotalAmountAndPaidData(),
            ],
          ),
        ),
      ),
    );
  }
}
