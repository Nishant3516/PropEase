import 'package:flutter/material.dart';

class FilterRow extends StatelessWidget {
  final List<String> chipLabels;
  final ValueChanged<bool>? onChipPressed;

  const FilterRow({super.key, required this.chipLabels, this.onChipPressed});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: chipLabels
            .map(
              (chip) =>
                  FilterChip(label: Text(chip), onSelected: onChipPressed),
            )
            .toList(),
      ),
    );
  }
}
