import 'package:flutter/material.dart';

import '../../../widgets/app_back_button.dart';


class BundleDetailsPage extends StatelessWidget {
  const BundleDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const AppBackButton(),
        title: const Text('Bundle Details Page'),
      ),
    );
  }
}
