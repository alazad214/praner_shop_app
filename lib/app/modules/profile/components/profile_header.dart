import 'package:flutter/material.dart';
import 'package:praner_shop/app/modules/profile/components/user_data.dart';
import 'profile_header_option.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        /// Background
        Image.asset('assets/images/bg.png'),

        /// Content
        const Column(
          children: [UserData(), ProfileHeaderOption()],
        ),
      ],
    );
  }
}
