import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:praner_shop/utils/app_icons.dart';
import 'package:praner_shop/app/modules/profile/settings/app_settings_tile.dart';

import '../../../../utils/app_defaults.dart';


class HelpTopics extends StatelessWidget {
  const HelpTopics({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: AppDefaults.padding),
        Text(
          'Topics',
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
        ),
        const SizedBox(height: AppDefaults.padding / 2),
        AppMenuTile(
          label: 'My Account',
          trailing: SvgPicture.asset(AppIcons.right),
        ),
        AppMenuTile(
          label: 'Payment and Wallet',
          trailing: SvgPicture.asset(AppIcons.right),
        ),
        AppMenuTile(
          label: 'Shipping & Delivery',
          trailing: SvgPicture.asset(AppIcons.right),
        ),
        AppMenuTile(
          label: 'Vouchers & Promotions',
          trailing: SvgPicture.asset(AppIcons.right),
        ),
        AppMenuTile(
          label: 'Ordering',
          trailing: SvgPicture.asset(AppIcons.right),
        ),
      ],
    );
  }
}
