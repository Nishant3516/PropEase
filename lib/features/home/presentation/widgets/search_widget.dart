import 'package:flutter/material.dart';
import 'package:propease/core/widgets/app_gaps.dart';
import 'package:propease/core/widgets/app_text_field.dart';
import 'package:propease/features/home/presentation/widgets/filter_widget.dart';
import 'package:propease/gen/assets.gen.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: AppTextField(
            prefixIcon: Assets.icons.search,
            fieldName: 'Search by Address, City, or Zip',
          ),
        ),
        AppGaps.w4,
        FilterWidget(),
      ],
    );
  }
}
