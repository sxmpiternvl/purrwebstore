import 'package:flutter/material.dart';
import '../widgets/catalog_tab.dart';
import '../widgets/test2.dart';

class CatalogPage extends StatelessWidget {
  const CatalogPage({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController searchController = TextEditingController();

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 64,
        title: TextFormField(
          controller: searchController,
          decoration: InputDecoration(
            hintText: 'Поиск',
            hintStyle: const TextStyle(fontSize: 16, color: Colors.grey),
            prefixIcon: const Icon(Icons.search, size: 24, color: Colors.grey),
            contentPadding: const EdgeInsets.symmetric(vertical: 12),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide.none,
            ),
            filled: true,
            fillColor: Colors.white,
          ),
        ),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                _buildListTile(
                  context,
                  'Назначение',
                  title: 'Назначение',
                  options: ['Жирная', 'Комбинированная', 'Сухая', 'Нормальная'],
                ),
                _buildListTile(
                  context,
                  'Тип средства',
                  title: 'Тип средства',
                  options: ['Жирная', 'Комбинированная', 'Сухая', 'Нормальная'],
                ),
                _buildListTile(
                  context,
                  'Тип кожи',
                  title: 'Тип кожи',
                  options: ['Жирная', 'Комбинированная', 'Сухая', 'Нормальная'],
                ),
                _buildListTile(
                  context,
                  'Линия косметики',
                  title: 'Линия косметики',
                  options: ['Жирная', 'Комбинированная', 'Сухая', 'Нормальная'],
                ),
                _buildListTile(
                  context,
                  'Наборы',
                  title: 'Наборы',
                  options: ['Жирная', 'Комбинированная', 'Сухая', 'Нормальная'],
                ),
                _buildListTile(
                  context,
                  'Акции %',
                  title: 'Акции',
                  options: ['Жирная', 'Комбинированная', 'Сухая', 'Нормальная'],
                ),
                _buildListTile(
                  context,
                  'Консультация с косметологом',
                  title: 'Консультация',
                  options: ['Жирная', 'Комбинированная', 'Сухая', 'Нормальная'],
                ),
              ],
            ),
          ),
          const test2(),
        ],
      ),
    );
  }


  Widget _buildListTile(BuildContext context, String label,
      {required String title, required List<String> options}) {
    return ListTile(
      title: Text(label),
      onTap: () {
        Navigator.of(context).pushNamed(
          '/types',
          arguments: TypesPageArguments(
            title: title,
            options: options,
          ),
        );
      },
    );
  }
}
