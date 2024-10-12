import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../utils/app_colors.dart';
import '../../../../utils/app_defaults.dart';
import '../../../../utils/app_icons.dart';

class DetailsImageFavorite extends StatelessWidget {
  const DetailsImageFavorite({super.key, this.favoriteOntap, this.image});
  final favoriteOntap;
  final image;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
            clipBehavior: Clip.antiAlias,
            height: 200,
            width: double.infinity,
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Colors.black12, borderRadius: BorderRadius.circular(10)),
            child: Image.network(
              image,
              fit: BoxFit.cover,
            )),
        Positioned(
          right: 10,
          top: 10,
          child: Material(
            color: Colors.transparent,
            borderRadius: AppDefaults.borderRadius,
            child: IconButton(
              onPressed: favoriteOntap,
              iconSize: 56,
              constraints: const BoxConstraints(minHeight: 56, minWidth: 56),
              icon: Container(
                padding: const EdgeInsets.all(AppDefaults.padding),
                decoration: const BoxDecoration(
                  color: AppColors.scaffoldBackground,
                  shape: BoxShape.circle,
                ),
                child: SvgPicture.asset(AppIcons.heart),
              ),
            ),
          ),
        )
      ],
    );
  }
}
