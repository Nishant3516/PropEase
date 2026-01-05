import 'package:flutter/material.dart';
import 'package:propease/core/widgets/app_gaps.dart';

class PropertyBasicInfoWidget extends StatelessWidget {
  final String? propertyName;
  final String? propertyAddress;

  const PropertyBasicInfoWidget({
    super.key,
    this.propertyAddress,
    this.propertyName,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'Woodland Apartment',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        AppGaps.h8,
        const Text(
          '1012 Ocean avenue, New york, USA',
          style: TextStyle(color: Colors.grey, fontSize: 14),
        ),
      ],
    );
  }
}
