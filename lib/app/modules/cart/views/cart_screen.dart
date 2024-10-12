import 'package:flutter/material.dart';
import 'package:praner_shop/widgets/app_button.dart';
import '../components/coupon_code_field.dart';
import '../components/price_and_item.dart';
import '../components/cart_item.dart';

class CartScreen extends StatelessWidget {
  final leading;
  const CartScreen({
    super.key,
    this.leading,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: leading,
        title: const Text('Cart Item'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const CardItem(),
              const CouponCodeField(),
              const PriceAndItem(),
              Padding(
                padding: const EdgeInsets.all(20),
                child: AppButton(
                  text: 'Checkout',
                  onTap: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
