import 'package:flutter/material.dart';

import '../../../../utils/app_defaults.dart';


class TitleAndParagraph extends StatelessWidget {
  const TitleAndParagraph({
    super.key,
    required this.title,
    required this.paragraph,
    this.isTitleHeadline = true,
  });

  final String title;
  final String paragraph;
  final bool isTitleHeadline;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppDefaults.padding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: isTitleHeadline
                ? Theme.of(context).textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                    )
                : Theme.of(context).textTheme.bodyLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
          ),
          const SizedBox(height: AppDefaults.padding),
          Text(paragraph)
        ],
      ),
    );
  }
}
