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
        const UnderlinedText(
          text: "Новинки",
          underlineGradient: LinearGradient(
            colors: [
              Colors.white,
              Colors.cyanAccent,
            ],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
        ),

        SizedBox(
          height: 279,
          child: ProductsSlider(height: 188, width: 161, items: products2),
        ),
        const SizedBox(height: 40),
        test1(screenWidth: screenWidth, products3: products3),
        const UnderlinedText(text: "Акции", underlineGradient: LinearGradient(
          colors: [
            Colors.white,
            Colors.purpleAccent,
          ],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),),
        SizedBox(
          height: 279,
          child: ProductsSlider(height: 188, width: 161, items: productsSale),
        ),
        const ButtonsWidget(),
        const UnderlinedText(text: "Хиты", underlineGradient: LinearGradient(
          colors: [
            Color.fromARGB(100, 248, 102, 20),  Color.fromARGB(100, 252, 188, 92),

          ],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),),
        SizedBox(
          height: 279,
          child: ProductsSlider(height: 188, width: 161, items: products2),
        ),
        const SizedBox(height: 50),
      ],
    );
  }
}