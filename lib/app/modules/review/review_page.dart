import 'package:flutter/material.dart';
import 'package:praner_shop/widgets/app_back_button.dart';

import 'components/review_lists.dart';
import 'components/review_overview.dart';

class ReviewPage extends StatelessWidget {
  const ReviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const AppBackButton(),
        title: const Text('Review'),
      ),
      body: const Column(
        children: [
          ReviewOverview(),
          Divider(thickness: 0.1),
          ReviewLists(),
        ],
      ),
    );
  }
}
