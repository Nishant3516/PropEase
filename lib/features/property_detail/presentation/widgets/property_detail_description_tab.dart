import 'package:flutter/material.dart';
import 'package:propease/core/utils/extensions.dart';
import 'package:propease/features/property_detail/presentation/widgets/property_facility_item_widget.dart';
import 'package:propease/features/property_detail/presentation/widgets/property_listing_agent_widget.dart';
import 'package:propease/features/property_detail/presentation/widgets/property_stat_item.dart';

class PropertyDetailDescriptionTab extends StatelessWidget {
  const PropertyDetailDescriptionTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Property Stats
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              PropertyStatItem(),
              PropertyStatItem(),
              PropertyStatItem(),
              PropertyStatItem(),
            ],
          ),
          const SizedBox(height: 24),
          // Listing Agent
          PropertyListingAgentWidget(),
          const SizedBox(height: 24),
          // Facilities
          Text(
            context.l10n.facilities,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              PropertyFacilityItemWidget(),
              PropertyFacilityItemWidget(),
              PropertyFacilityItemWidget(),
              PropertyFacilityItemWidget(),
            ],
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              PropertyFacilityItemWidget(),
              PropertyFacilityItemWidget(),
              PropertyFacilityItemWidget(),
              PropertyFacilityItemWidget(),
            ],
          ),
          const SizedBox(height: 24),
          // Address
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                context.l10n.address,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              TextButton(onPressed: () {}, child: Text(context.l10n.viewOnMap)),
            ],
          ),
          const SizedBox(height: 8),
          const Row(
            children: [
              Icon(Icons.location_on, color: Colors.grey, size: 20),
              SizedBox(width: 8),
              Text(
                'Lorem ipsum is simply dummy text',
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
          const SizedBox(height: 16),
          // Map Placeholder
          Container(
            height: 200,
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.location_city,
                    size: 48,
                    color: Colors.blue.shade700,
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'UNION',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
