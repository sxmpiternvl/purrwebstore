import 'package:flutter/material.dart';
import '../Screens/catalog_page.dart';
import '../Screens/types_page.dart';

class CatalogTab extends StatelessWidget {
  const CatalogTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Navigator(
      initialRoute: '/',
      onGenerateRoute: (RouteSettings settings) {
        WidgetBuilder builder;
        switch (settings.name) {
          case '/':
            builder = (BuildContext context) => const CatalogPage();
            break;
          case '/types':
            final args = settings.arguments as TypesPageArguments;
            builder = (BuildContext context) => TypesPage(
              title: args.title,
              options: args.options,
            );
            break;
          default:
            throw Exception();
        }
        return MaterialPageRoute(builder: builder, settings: settings);
      },
    );
  }
}

class TypesPageArguments {
  final String title;
  final List<String> options;

  TypesPageArguments({required this.title, required this.options});
}
