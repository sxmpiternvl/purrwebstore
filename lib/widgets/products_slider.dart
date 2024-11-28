import 'package:flutter/material.dart';

class ProductsSlider extends StatelessWidget {
  final double height;
  final double width;
  final List<Map<String, String>> items;

  const ProductsSlider({
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
    return Container(
      width: width,
      child: Padding(
        padding: const EdgeInsets.only(left: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.black12,
              ),
              child: Image.asset(
                item['image']!,
                width: width,
                height: height,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 7),
            Text(item['name']!, style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w500),),
            Text(
              item['title']!,
              style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
            ),

            Text(
              item['price']!,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
    );
  }
}