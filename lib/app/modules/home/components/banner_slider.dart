import 'package:another_carousel_pro/another_carousel_pro.dart';
import 'package:flutter/material.dart';

class BannerSlider extends StatelessWidget {
  final margin;
  const BannerSlider({super.key, this.margin});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 160.0,
        width: double.infinity,
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(
              color: Colors.black12,
              spreadRadius: 1,
            )
          ],
          borderRadius: BorderRadius.circular(4.0),
        ),
        child: AnotherCarousel(
            dotSize: 0,
            dotSpacing: 10,
            dotBgColor: Colors.transparent,
            images: [
              Image.asset(
                "assets/banner/banner 1.jpg",
                fit: BoxFit.cover,
              ),
              Image.asset(
                "assets/banner/banner 2.jpg",
                fit: BoxFit.cover,
              ),
              Image.asset(
                "assets/banner/banner3.png",
                fit: BoxFit.cover,
              ),
            ]));
  }
}
