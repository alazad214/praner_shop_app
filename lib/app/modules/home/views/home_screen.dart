import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:praner_shop/app/modules/category/components/category_item.dart';
import 'package:praner_shop/app/modules/drawer/components/custom_drawer.dart';
import 'package:praner_shop/core/routes/app_routes.dart';
import 'package:praner_shop/utils/app_icons.dart';
import '../../../../utils/app_colors.dart';
import '../components/banner_slider.dart';
import '../../products/components/popular_product.dart';
import '../../products/components/top_rated_products.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: scaffoldKey,
        appBar: AppBar(
          toolbarHeight: 80,
          title: const Text(
            'Praner Shop',
            style: TextStyle(color: secondaryColor, fontSize: 18),
          ),
          titleSpacing: 0,
          automaticallyImplyLeading: false,
          leading: IconButton(
              onPressed: () {
                scaffoldKey.currentState!.openDrawer();
              },
              icon: const Icon(Icons.menu, color: secondaryColor, size: 25)),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, AppRoutes.search);
                },
                icon: SvgPicture.asset(
                  AppIcons.search,
                  color: Colors.blueAccent,
                ))
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: ListView(
            children: [
              const BannerSlider(),
              CategoryItem(),
              TopRatedProducts(),
              PopularProduct(),
            ],
          ),
        ),
        drawer: const AppDrawer());
  }
}
