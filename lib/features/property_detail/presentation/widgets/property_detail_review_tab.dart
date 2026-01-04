import 'package:flutter/material.dart';
import 'package:propease/features/property_detail/presentation/widgets/property_review_item.dart';

class PropertyDetailReviewTab extends StatelessWidget {
  const PropertyDetailReviewTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Review',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16),
          PropertyReviewItem(),
          const SizedBox(height: 16),
          PropertyReviewItem(),
          const SizedBox(height: 16),
          Center(
            child: TextButton(
              onPressed: () {},
              child: const Text(
                'View all 172 reviews',
                style: TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
