import 'package:flutter/material.dart';

class ReviewScreen extends StatelessWidget {
  final product;
  const ReviewScreen({super.key, this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(),
        title: const Text('All Reviews'),
      ),
      body: product.reviews != null && product.reviews.isNotEmpty
          ? ListView.builder(
              itemCount: product.reviews.length,
              itemBuilder: (context, index) {
                final review = product.reviews[index];
                return Container(
                    padding: const EdgeInsets.all(15),
                    margin:
                        const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black12),
                        borderRadius: BorderRadius.circular(4)),
                    child: Stack(
                      children: [
                        Positioned(
                            right: 5,
                            top: 5,
                            child: Image.asset(
                              'assets/icons/qotetion.png',
                              height: 30,
                            )),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              review.reviewerName ?? 'Anonymous',
                              style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              review.reviewerEmail ?? 'user email',
                              style: const TextStyle(
                                  color: Colors.black45, fontSize: 10),
                            ),
                            const SizedBox(height: 15),
                            Text(
                              review.comment ?? 'No comment provided.',
                              style: const TextStyle(
                                  color: Colors.black, fontSize: 18),
                            ),
                          ],
                        ),
                      ],
                    ));
              },
            )
          : const Center(
              child: Text("No reviews available"),
            ),
    );
  }
}
