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
    final isSale = item['type'] == 'sale';
    return SizedBox(
      width: width,
      child: Padding(
        padding: const EdgeInsets.only(left: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  width: width,
                  height: height,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: const Color(0xFFF4F4F4),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Center(
                      child: Image.asset(
                        item['image']!,
                        width: width * 0.8,
                        height: height * 0.8,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
                if (isSale)
                  Positioned(
                    top: 8,
                    right: 8,
                    child: Column(
                      children: [
                        Container(
                          width: 24,
                          height: 24,
                          decoration: const BoxDecoration(
                            color: Colors.black,
                            shape: BoxShape.circle,
                          ),
                          child: const Center(
                            child: Text(
                              '%',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 8),
                        if (item['onePlusOne'] == 'true')
                          const Text(
                            "1+1",
                            style: TextStyle(
                                color: Color(0xFFF47DDA),
                                fontSize: 16,
                                fontWeight: FontWeight.w600),
                          ),
                      ],
                    ),
                  ),
              ],
            ),
            const SizedBox(height: 7),
            Text(
              item['name']!,
              style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
            ),
            Text(
              item['title']!,
              style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
            ),
            if (isSale)
              Row(
                children: [
                  Text(
                    item['price']!,
                    style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.black),
                  ),
                  const SizedBox(width: 5),
                    Text(
                      item['oldPrice']!,
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey,
                        decoration: TextDecoration.lineThrough,
                      ),
                    ),
                ],
              )
            else if (!isSale)
              Text(
                item['price']!,
                style:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
          ],
        ),
      ),
    );
  }
}
