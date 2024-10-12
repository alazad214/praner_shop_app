import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:praner_shop/utils/app_icons.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../utils/app_colors.dart';
import '../../../../utils/app_defaults.dart';


class SearchBar extends StatelessWidget {
  const SearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        inputDecorationTheme: AppTheme.secondaryInputDecorationTheme,
      ),
      child: Padding(
        padding: const EdgeInsets.all(AppDefaults.padding),
        child: TextField(
          decoration: InputDecoration(
            labelText: 'Search Product',
            suffixIcon: IconButton(
              icon: SvgPicture.asset(
                AppIcons.search,
                width: 24,
                colorFilter: const ColorFilter.mode(
                  AppColors.placeholder,
                  BlendMode.srcIn,
                ),
              ),
              onPressed: () {},
            ),
          ),
        ),
      ),
    );
  }
}
