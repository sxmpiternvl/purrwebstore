import 'package:flutter/material.dart';
import 'package:purrweb_test/widgets/categories_slider.dart';
import 'package:purrweb_test/widgets/products_slider.dart';
import 'package:purrweb_test/widgets/slider.dart';
import 'package:purrweb_test/widgets/undrerlined_text.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Map<String, String>> products1 = [
    {
      'image': 'assets/slider11.png',
      'title': 'Наборы',
    },
    {
      'image': 'assets/slider11.png',
      'title': 'Для лица',
    },
    {
      'image': 'assets/slider11.png',
      'title': 'Для глаз',
    },
    {
      'image': 'assets/slider11.png',
      'title': 'Для тела',
    },
    {
      'image': 'assets/slider11.png',
      'title': 'Для тела',
    },
    {
      'image': 'assets/slider11.png',
      'title': 'Для тела',
    },
    {
      'image': 'assets/slider11.png',
      'title': 'Для тела',
    },
  ];

  final List<Map<String, String>> products2 = [
    {
      'image': 'assets/slider11.png',
      'title': 'Unstress Total Serenity Serum',
      'name': 'Сыворотка',
      'price': '10 195Р',
    },
    {
      'image': 'assets/slider11.png',
      'title': 'Unstress Revitalizing Toner',
      'name': 'Тоник',
      'price': '3095Р',
    },
    {
      'image': 'assets/slider11.png',
      'title': 'Unstress Total Serenity Serum',
      'name': 'Сыворотка',
      'price': '10 195Р',
    },
    {
      'image': 'assets/slider11.png',
      'title': 'Unstress Revitalizing Toner',
      'name': 'Тоник',
      'price': '3095Р',
    },

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const SliderWidget(),
          const SizedBox(height: 25),
          SizedBox(
              height: 95,
              child: CategoriesSlider(
                items: products1,
                height: 72,
                width: 72,
              )),
          const SizedBox(height: 32),
          const UnderlinedText(text: "Новинки", underlineColor: Colors.blue),
          const SizedBox(height: 24),
          SizedBox(
            height: 279,
            child: ProductsSlider(height: 188, width: 161, items: products2),
          ),
        ],
      ),
    );
  }
}
