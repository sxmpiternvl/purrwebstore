import 'package:flutter/material.dart';

class CategoriesSlider extends StatelessWidget {
  final double height;
  final double width;
  final List<Map<String, String>> items;

  const CategoriesSlider({
    super.key,
    required this.height,
    required this.width,
    required this.items,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: items.length,
      itemBuilder: (context, index) {
        return _buildSliderItem(items[index]);
      },
    );
  }

  Widget _buildSliderItem(Map<String, String> item) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: const Color(0xFFF4F4F4),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                item['image']!,
                width: width,
                height: height,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            item['title']!,
            style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}