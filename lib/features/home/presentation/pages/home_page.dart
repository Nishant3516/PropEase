import 'package:flutter/material.dart';
import 'package:propease/core/constants/app_spacing.dart';
import 'package:propease/core/widgets/filter_row.dart';
import 'package:propease/features/home/presentation/widgets/greet_widget.dart';
import 'package:propease/features/home/presentation/widgets/properties_display_row.dart';
import 'package:propease/features/home/presentation/widgets/properties_near_you_widget.dart';
import 'package:propease/features/home/presentation/widgets/search_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.all(AppSpacing.md),
        child: Column(
          children: [
            SizedBox(height: MediaQuery.sizeOf(context).height * 0.1),
            GreetWidget(),
            SearchWidget(),
            FilterRow(chipLabels: ['Test 1', 'Test 2']),
            PropertiesDisplayRow(),
            PropertiesNearYouWidget(),
          ],
        ),
      ),
    );
  }
}
