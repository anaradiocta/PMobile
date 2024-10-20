import 'package:flutter/material.dart';
import 'package:belanja_flutter/pages/home_page.dart';
import 'package:belanja_flutter/pages/item_page.dart';
import 'package:belanja_flutter/models/item.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),  // Rute untuk HomePage
      },
      onGenerateRoute: (settings) {
        if (settings.name == '/item') {
          // Pastikan bahwa arguments tidak null dan dapat dikonversi ke Item
          final Item item = settings.arguments as Item;

          return MaterialPageRoute(
            builder: (context) {
              return ItemPage(item: item);  // Kirim data item ke ItemPage
            },
          );
        }
        return null; // Jika tidak ada rute yang cocok
      },
    );
  }
}
