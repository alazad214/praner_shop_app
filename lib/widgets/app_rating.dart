import 'package:flutter/material.dart';

class AppRating extends StatelessWidget {
  const AppRating({super.key, this.score});
  final score;

  @override
  Widget build(BuildContext context) {
    return Row(
        children: List.generate(5, (index) {
      return Icon(
        index < score ? Icons.star : Icons.star_border,
        color: Colors.yellow.shade400,
        size: 16,
      );
    }));
  }
}
