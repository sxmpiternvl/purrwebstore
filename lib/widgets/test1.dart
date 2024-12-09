import 'package:flutter/material.dart';

import 'categories_slider.dart';
class test1 extends StatelessWidget {
  const test1({
    super.key,
    required this.screenWidth,
    required this.products3,
  });

  final double screenWidth;
  final List<Map<String, String>> products3;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenWidth,
      decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/background1.png"), fit: BoxFit.cover, opacity: 0.3)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 23),
            child: Text("Моя схема домашнего ухода", style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),),
          ),
          SizedBox(
            height: 109,
            child:
            CategoriesSlider(height: 81, width: 75, items: products3),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 23),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: screenWidth - 190,
                  child: const Text(
                    "Ответьте на 10 вопросов, и мы подберем нужный уход", style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500),),
                ),
                Container(
                  width: 118,
                  height: 40,
                  child: TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      backgroundColor: const Color(0xFF2B2B2B),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6),
                      ),
                    ),
                    child: const Text("Пройти тест", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 12),),
                  ),
                )
              ],
            ),
          ),

        ],
      ),
    );
  }
}
