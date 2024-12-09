import 'package:flutter/material.dart';

import '../data/products.dart';
import '../widgets/buttons_widget.dart';
import '../widgets/categories_slider.dart';
import '../widgets/products_slider.dart';
import '../widgets/slider.dart';
import '../widgets/test1.dart';
import '../widgets/undrerlined_text.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return ListView(
      padding: EdgeInsets.zero,
      children: [
        const SliderWidget(),
        SizedBox(
          height: 103,
          child: CategoriesSlider(height: 72, width: 72, items: products1),
        ),
        const UnderlinedText(text: "Новинки", underlineColor: Colors.blue),
        SizedBox(
          height: 279,
          child: ProductsSlider(height: 188, width: 161, items: products2),
        ),
        const SizedBox(height: 40),
        test1(screenWidth: screenWidth, products3: products3),
        const UnderlinedText(text: "Акции", underlineColor: Colors.purple),
        SizedBox(
          height: 279,
          child: ProductsSlider(height: 188, width: 161, items: productsSale),
        ),
        const ButtonsWidget(),
        const UnderlinedText(text: "Хиты", underlineColor: Colors.orange),
        SizedBox(
          height: 279,
          child: ProductsSlider(height: 188, width: 161, items: products2),
        ),
        const SizedBox(height: 50),
      ],
    );
  }
}