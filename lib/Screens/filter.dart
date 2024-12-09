import 'package:flutter/material.dart';

class FilterPage extends StatefulWidget {
  const FilterPage({super.key});

  @override
  State<FilterPage> createState() => _FilterPageState();
}

class _FilterPageState extends State<FilterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text("Фильтры"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              children: [
                buildRow("Сортировка", "По популярности"),
                buildRow("Тип кожи", "Жирная"),
                buildRow("Тип средства", "Все"),
                buildRow("Проблема кожи", "Не выбрано"),
                buildRow("Эффект средства", "Увлажнение"),
                buildRow("Линия косметики", "Все"),
              ],
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 30),
            child: Container(
              height: 60,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,

                  padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(9),
                  ),
                ),
                child: const Text(
                  'Применить фильтры',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

   buildRow(String text1, String text2) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 24.0),
      child: Row(
            children: [
              Text(text1, style: const TextStyle(color: Colors.black, fontWeight: FontWeight.w600, fontSize: 16),),
              const Spacer(),
              Text(text2, style: const TextStyle(color: Color.fromARGB(50, 0, 0, 0), fontWeight: FontWeight.w500, fontSize: 16),),
            ],
          ),
    );
  }
}
