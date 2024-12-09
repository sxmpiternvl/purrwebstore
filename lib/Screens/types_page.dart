import 'package:flutter/material.dart';
import '../data/products.dart';
import 'products_page.dart';

class TypesPage extends StatelessWidget {
  final String title;
  final List<String> options;

  const TypesPage({
    Key? key,
    required this.title,
    required this.options,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Map<String, String> skinTypesGenitive = {
      'Жирная': 'жирной',
      'Сухая': 'сухой',
      'Комбинированная': 'комбинированной',
      'Нормальная': 'нормальной'
    };

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(title),
      ),
      body: ListView.builder(
        itemCount: options.length,
        itemBuilder: (context, index) {
          final option = options[index];
          final genitiveSkinType = skinTypesGenitive[option] ?? option;
          return ListTile(
            title: Text(option),
            onTap: () {
              List<Product> products = getProductsForSkinType(option);
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => ProductsPage(
                    title: 'Средства для $genitiveSkinType кожи',
                    products: products,
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }

  List<Product> getProductsForSkinType(String skinType) {
    switch (skinType) {
      case 'Жирная':
        return products2.map((item) {
          String priceString = item['price']!.replaceAll(' ', '').replaceAll('Р', '');
          int parsedPrice = int.tryParse(priceString) ?? 0;
          return Product(
            name: item['title'] ?? 'Без названия',
            imageUrl: item['image'] ?? '',
            category: item['name'] ?? 'Без категории',
            price: parsedPrice,
          );
        }).toList();
      default:
        return [];
    }
  }
}
