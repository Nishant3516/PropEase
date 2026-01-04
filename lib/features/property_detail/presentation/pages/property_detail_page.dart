import 'package:flutter/material.dart';
import 'package:propease/core/widgets/app_gaps.dart';
import 'package:propease/core/widgets/app_image.dart';
import 'package:propease/features/property_detail/presentation/widgets/property_basic_info_widget.dart';
import 'package:propease/features/property_detail/presentation/widgets/property_book_widget.dart';
import 'package:propease/features/property_detail/presentation/widgets/property_detail_description_tab.dart';
import 'package:propease/features/property_detail/presentation/widgets/property_detail_review_tab.dart';
import 'package:propease/features/property_detail/presentation/widgets/property_rating_widget.dart';
import 'package:propease/gen/assets.gen.dart';

class PropertyDetailPage extends StatefulWidget {
  const PropertyDetailPage({super.key});

  @override
  State<PropertyDetailPage> createState() => _PropertyDetailPageState();
}

class _PropertyDetailPageState extends State<PropertyDetailPage> {
  int _selectedTab = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Hero Image Section
          Stack(
            children: [
              Container(
                height: 300,
                width: double.infinity,
                child: AppImage(
                  assetPath: Assets.images.property.path,
                  imageType: AppImageType.png,
                  boxFit: BoxFit.cover,
                ),
              ),
              // Top Bar
              Positioned(
                top: 40,
                left: 0,
                right: 0,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        child: IconButton(
                          icon: const Icon(
                            Icons.arrow_back,
                            color: Colors.black,
                          ),
                          onPressed: () => Navigator.pop(context),
                        ),
                      ),
                      Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.white,
                            child: IconButton(
                              icon: const Icon(
                                Icons.share,
                                color: Colors.black,
                              ),
                              onPressed: () {},
                            ),
                          ),
                          const SizedBox(width: 8),
                          CircleAvatar(
                            backgroundColor: Colors.white,
                            child: IconButton(
                              icon: const Icon(
                                Icons.favorite_border,
                                color: Colors.black,
                              ),
                              onPressed: () {},
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              // Gallery Thumbnails (for gallery view)
              if (_selectedTab == 1)
                Positioned(
                  bottom: 16,
                  left: 16,
                  right: 16,
                  child: Row(
                    children: [
                      _buildThumbnail(
                        'https://images.unsplash.com/photo-1613490493576-7fde63acd811?w=200',
                      ),
                      _buildThumbnail(
                        'https://images.unsplash.com/photo-1615529182904-14819c35db37?w=200',
                      ),
                      _buildThumbnail(
                        'https://images.unsplash.com/photo-1502005229762-cf1b2da7c5d6?w=200',
                      ),
                      _buildThumbnail(
                        'https://images.unsplash.com/photo-1615529328331-f8917597711f?w=200',
                      ),
                      Container(
                        width: 60,
                        height: 60,
                        margin: const EdgeInsets.only(left: 8),
                        decoration: BoxDecoration(
                          color: Colors.black54,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: const Center(
                          child: Text(
                            '+10',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
            ],
          ),
          // Content Section
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      PropertyRatingWidget(),
                      AppGaps.h16,
                      PropertyBasicInfoWidget(),
                    ],
                  ),
                  // Tabs
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      children: [
                        _buildTab('Description', 0),
                        _buildTab('Gallery', 1),
                        _buildTab('Review', 2),
                      ],
                    ),
                  ),
                  const Divider(height: 1),
                  // Tab Content
                  _buildTabContent(),
                ],
              ),
            ),
          ),
          PropertyBookWidget(),
        ],
      ),
    );
  }

  Widget _buildTab(String title, int index) {
    final isSelected = _selectedTab == index;
    return GestureDetector(
      onTap: () => setState(() => _selectedTab = index),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: isSelected ? Colors.blue : Colors.transparent,
              width: 2,
            ),
          ),
        ),
        child: Text(
          title,
          style: TextStyle(
            color: isSelected ? Colors.blue : Colors.grey,
            fontWeight: isSelected ? FontWeight.w600 : FontWeight.normal,
          ),
        ),
      ),
    );
  }

  Widget _buildTabContent() {
    switch (_selectedTab) {
      case 0:
        return PropertyDetailDescriptionTab();
      case 1:
        return _buildGalleryTab();
      case 2:
        return PropertyDetailReviewTab();
      default:
        return Container();
    }
  }

  Widget _buildGalleryTab() {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Gallery (400)',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16),
          GridView.count(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            crossAxisCount: 2,
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
            children: [
              _buildGalleryImage(
                'https://images.unsplash.com/photo-1502005229762-cf1b2da7c5d6?w=400',
              ),
              _buildGalleryImage(
                'https://images.unsplash.com/photo-1615529328331-f8917597711f?w=400',
              ),
              _buildGalleryImage(
                'https://images.unsplash.com/photo-1615529182904-14819c35db37?w=400',
              ),
              _buildGalleryImage(
                'https://images.unsplash.com/photo-1615529182904-14819c35db37?w=400',
              ),
              _buildGalleryImage(
                'https://images.unsplash.com/photo-1600607687939-ce8a6c25118c?w=400',
              ),
              _buildGalleryImage(
                'https://images.unsplash.com/photo-1502005229762-cf1b2da7c5d6?w=400',
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildThumbnail(String url) {
    return Container(
      width: 60,
      height: 60,
      margin: const EdgeInsets.only(left: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        image: DecorationImage(image: NetworkImage(url), fit: BoxFit.cover),
      ),
    );
  }

  Widget _buildGalleryImage(String url) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        image: DecorationImage(image: NetworkImage(url), fit: BoxFit.cover),
      ),
    );
  }
}
