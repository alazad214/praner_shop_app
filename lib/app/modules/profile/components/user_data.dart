import 'package:flutter/material.dart';
import 'package:praner_shop/utils/app_images.dart';

import '../../../../utils/app_defaults.dart';
import '../../../../widgets/network_image.dart';

class UserData extends StatelessWidget {
  const UserData({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Row(
          children: [
            const SizedBox(width: AppDefaults.padding),
             const SizedBox(
              width: 100,
              height: 100,
              child: ClipOval(
                child: AspectRatio(
                    aspectRatio: 1 / 1, child: NetworkImageWithLoader(AppImages.profilePic)),
              ),
            ),
            const SizedBox(width: AppDefaults.padding),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Al Azad',
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
                const SizedBox(height: 8),
                Text(
                  'alazad214@gmail.com',
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge
                      ?.copyWith(color: Colors.white),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
