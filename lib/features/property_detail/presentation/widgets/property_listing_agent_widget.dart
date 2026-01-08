import 'package:flutter/material.dart';
import 'package:propease/core/utils/extensions.dart';

class PropertyListingAgentWidget extends StatelessWidget {
  const PropertyListingAgentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          context.l10n.listingAgent,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 12),
        Row(
          children: [
            const CircleAvatar(radius: 24),
            const SizedBox(width: 12),
            const Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Sandeep S.',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  Text(
                    'Partner',
                    style: TextStyle(color: Colors.grey, fontSize: 14),
                  ),
                ],
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.email, color: Colors.blue),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.phone, color: Colors.blue),
            ),
          ],
        ),
      ],
    );
  }
}
