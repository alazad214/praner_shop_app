import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:praner_shop/utils/app_icons.dart';
import 'package:praner_shop/app/modules/profile/settings/app_settings_tile.dart';

import '../../../../utils/app_defaults.dart';

class TopQuestions extends StatelessWidget {
  const TopQuestions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: AppDefaults.padding / 2),
        Text(
          'Top Questions',
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
        ),
        const SizedBox(height: AppDefaults.padding / 2),
        AppMenuTile(
          label: 'How do I return my Items',
          trailing: SvgPicture.asset(AppIcons.right),
        ),
        AppMenuTile(
          label: 'How to use collection point?',
          trailing: SvgPicture.asset(AppIcons.right),
        ),
        AppMenuTile(
          label: 'What is Grocery?',
          trailing: SvgPicture.asset(AppIcons.right),
        ),
        AppMenuTile(
          label: 'How can i add new delivery address?',
          trailing: SvgPicture.asset(AppIcons.right),
        ),
        AppMenuTile(
          label: 'How can i avail Sticker Price?',
          trailing: SvgPicture.asset(AppIcons.right),
        ),
      ],
    );
  }
}
