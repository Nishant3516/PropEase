import 'package:flutter/material.dart';
import 'package:propease/core/utils/extensions.dart';
import 'package:propease/features/property_detail/presentation/widgets/review_thumbnail_widget.dart';

class PropertyReviewItem extends StatelessWidget {
  const PropertyReviewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            const CircleAvatar(radius: 20),
            const SizedBox(width: 12),
            const Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Sandeep S.',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            const Text(
              '2 months ago',
              style: TextStyle(color: Colors.grey, fontSize: 12),
            ),
          ],
        ),
        const SizedBox(height: 12),
        const Text(
          'Lorem ipsum is simply dummy text of the printing Lorem ipsum is simply dummy text of the printing',
          style: TextStyle(color: Colors.grey, fontSize: 14),
        ),
        const SizedBox(height: 12),
        Row(
          children: [
            ...List.generate(
              5,
              (index) => const Icon(Icons.star, color: Colors.orange, size: 18),
            ),
            const SizedBox(width: 8),
            const Text('5.0', style: TextStyle(fontWeight: FontWeight.bold)),
            const Spacer(),
            Text(context.l10n.helpful, style: TextStyle(color: Colors.grey)),
            const SizedBox(width: 8),
            Row(
              children: [
                const Icon(
                  Icons.thumb_up_outlined,
                  size: 18,
                  color: Colors.grey,
                ),
                const SizedBox(width: 4),
                const Text('1', style: TextStyle(color: Colors.grey)),
              ],
            ),
            const SizedBox(width: 16),
            Row(
              children: [
                const Icon(
                  Icons.thumb_down_outlined,
                  size: 18,
                  color: Colors.grey,
                ),
                const SizedBox(width: 4),
                const Text('2', style: TextStyle(color: Colors.grey)),
              ],
            ),
          ],
        ),
        const SizedBox(height: 12),
        Row(children: [ReviewThumbnailWidget(), ReviewThumbnailWidget()]),
      ],
    );
  }
}
