import 'package:flutter/material.dart';
import 'package:belanja_flutter/pages/home_page.dart';
import 'package:belanja_flutter/pages/item_page.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => HomePage(),
      '/item': (context) => ItemPage(item: null,),
    }
  ));
}

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       initialRoute: '/',  // Halaman awal adalah HomePage
//       routes: {
//         '/': (context) => HomePage(),  // Rute untuk HomePage
//       },
//       onGenerateRoute: (settings) {
//         if (settings.name == '/item') {
//           final item = settings.arguments as Item;  // Mengambil argument item

//           return MaterialPageRoute(
//             builder: (context) {
//               return ItemPage(item: item);  // Mengirim data item ke ItemPage
//             },
//           );
//         }
//         return null;
//       },
//     );
//   }
// }
