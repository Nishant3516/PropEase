import 'package:flutter/material.dart';

class PropertyRatingWidget extends StatelessWidget {
  final double? propertyRating;
  final double? reviews;
  final String? propertyType;

  const PropertyRatingWidget({
    super.key,
    this.propertyRating = 0,
    this.reviews = 0,
    this.propertyType,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(Icons.star, color: Colors.orange, size: 20),
        const SizedBox(width: 4),
        const Text('4.9 (6.8k review)', style: TextStyle(color: Colors.grey)),
        const Spacer(),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
          decoration: BoxDecoration(
            color: Colors.blue.shade50,
            borderRadius: BorderRadius.circular(20),
          ),
          child: const Text(
            'Apartment',
            style: TextStyle(color: Colors.blue, fontWeight: FontWeight.w500),
          ),
        ),
      ],
    );
  }
}
