import 'package:flutter/material.dart';
import 'package:propease/features/home/presentation/widgets/property_card.dart';

class PropertiesDisplayRow extends StatelessWidget {
  const PropertiesDisplayRow({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(children: [PropertyCard(), PropertyCard()]),
    );
  }
}
