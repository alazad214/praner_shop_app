import 'package:flutter/material.dart';

import '../../../../utils/app_colors.dart';
import '../../../../widgets/app_back_button.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const AppBackButton(),
        title: const Text('About Us'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.center,
                child: Image.asset(
                  'assets/logo/logo.png',
                  height: 100,
                ),
              ),
              const SizedBox(height: 20),

              sectionTitle('Welcome to Praner Mart'),
              const SizedBox(height: 10),
              const Text(
                'Praner Mart is your go-to online marketplace for a wide range of products, '
                'from daily essentials to specialty items. Our goal is to provide a seamless '
                'shopping experience, offering top-quality products at affordable prices.',
                style: TextStyle(fontSize: 14),
              ),
              const SizedBox(height: 20),

              sectionTitle('Our Mission'),
              const SizedBox(height: 10),
              const Text(
                'At Praner Mart, our mission is to make online shopping easy, convenient, '
                'and accessible for everyone. We are dedicated to bringing the best products '
                'to your doorstep with a safe and reliable shopping experience.',
                style: TextStyle(fontSize: 14),
              ),
              const SizedBox(height: 20),

              sectionTitle('Our Core Values'),
              const SizedBox(height: 10),
              const Text(
                '- Customer Satisfaction\n- Quality Products\n- Integrity & Trust\n- Innovation & Growth',
                style: TextStyle(fontSize: 14),
              ),
              const SizedBox(height: 20),

              sectionTitle('Our Story'),
              const SizedBox(height: 10),
              const Text(
                'Praner Mart was founded in [year] with a simple vision: to offer convenient and '
                'reliable online shopping. Over the years, we have expanded our product range and '
                'services to meet the growing needs of our customers.',
                style: TextStyle(fontSize: 14),
              ),
              const SizedBox(height: 20),

              sectionTitle('Quality Commitment'),
              const SizedBox(height: 10),
              const Text(
                'We are proud to offer only the best products, sourced from trusted suppliers. '
                'Our commitment to quality ensures that you receive the finest items every time.',
                style: TextStyle(fontSize: 14),
              ),
              const SizedBox(height: 20),

              sectionTitle('Customer Service'),
              const SizedBox(height: 5),
              const Text(
                'Our customer service team is available 24/7 to help with any queries. Our hassle-free return '
                'policy ensures that you can shop with confidence.',
                style: TextStyle(fontSize: 14),
              ),
              const SizedBox(height: 20),

              sectionTitle('Contact Us'),
              const SizedBox(height: 10),
              const Text(
                'Email: support@pranermart.com\nPhone: +880 123 4567\nAddress: [Thakurgaon, Bangladesh]',
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 40),

              // Footer
              Center(
                child: Text(
                  '© 2024 Praner Mart - All Rights Reserved',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey.shade600,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget sectionTitle(String title) {
    return Text(
      title,
      style: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        color: secondaryColor,
      ),
    );
  }
}
