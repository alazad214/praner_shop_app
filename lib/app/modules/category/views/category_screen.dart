import 'package:flutter/material.dart';
import 'package:praner_shop/core/routes/app_routes.dart';
import '../../../../widgets/app_back_button.dart';
import '../../products/components/top_rated_products.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Categories'),
        leading: const AppBackButton(),
      ),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          children: [
            const SizedBox(height: 32),
            Center(
              child: Text(
                'Explore Categories',
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      color: Colors.black87,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.2,
                    ),
              ),
            ),
            const SizedBox(height: 24),
            Align(
              alignment: Alignment.center,
              child: Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                spacing: 5,
                runSpacing: 10,
                children: [
                  for (int i = 0; i < _categories.length; i++)
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, AppRoutes.categoryDetails);
                      },
                      splashColor: Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(12),
                      child: CategoryTile(
                        label: _categories[i]['label'],
                      ),
                    )
                ],
              ),
            ),
            const SizedBox(height: 30),
            TopRatedProducts(),
            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}

class CategoryTile extends StatelessWidget {
  final String label;

  final Function()? onTap;

  const CategoryTile({
    required this.label,
    this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 2.3,
      padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 15),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50), border: Border.all()),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Flexible(
            child: Text(
              label,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Colors.black87,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}

const List<Map<String, dynamic>> _categories = [
  {
    'imageLink': 'https://i.imgur.com/tGChxbZ.png',
    'label': 'Vegetables',
  },
  {
    'imageLink': 'https://i.imgur.com/yOFxoIP.png',
    'label': 'Meat And Fish',
  },
  {
    'imageLink': 'https://i.imgur.com/GPsRaFC.png',
    'label': 'Medicine',
  },
  {
    'imageLink': 'https://i.imgur.com/mGRqfnc.png',
    'label': 'Baby Care',
  },
  {
    'imageLink': 'https://i.imgur.com/fwyz4oC.png',
    'label': 'Office Supplies',
  },
  {
    'imageLink': 'https://i.imgur.com/DNr8a6R.png',
    'label': 'Beauty',
  },
  {
    'imageLink': 'https://i.imgur.com/O2ZX5nR.png',
    'label': 'Gym Equipment',
  },
  {
    'imageLink': 'https://i.imgur.com/wJBopjL.png',
    'label': 'Gardening Tools',
  },
  {
    'imageLink': 'https://i.imgur.com/P4yJA9t.png',
    'label': 'Pet Care',
  },
  {
    'imageLink': 'https://i.imgur.com/sxGf76e.png',
    'label': 'Eye Wears',
  },
  {
    'imageLink': 'https://i.imgur.com/BPvKeXl.png',
    'label': 'Pack',
  },
];
