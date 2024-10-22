import 'package:flutter/material.dart';
import 'package:flutter_uts_belanja/models/item.dart';
import 'package:flutter_uts_belanja/pages/cart_page.dart';
import 'package:flutter_uts_belanja/pages/home_page.dart';
import 'package:flutter_uts_belanja/pages/item_page.dart';
import 'package:flutter_uts_belanja/pages/landing_page.dart';
import 'package:flutter_uts_belanja/pages/login_page.dart';
import 'package:flutter_uts_belanja/pages/profile_page.dart'; // Import halaman profile jika ada

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'N2Mart',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const LandingPage(),
        '/login': (context) => const LoginPage(),
        '/home': (context) {
          final args = ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>; // Ambil argumen dengan tipe data yang tepat
          return HomePage(username: args['username'], category: args['category']);
        },
        '/item': (context) {
          final item = ModalRoute.of(context)!.settings.arguments as Item; // Ambil argumen item dengan tipe Item
          return ItemPage(item: item); // Halaman untuk menampilkan detail item
        },
        '/cart': (context) => const CartPage(), // Ganti dengan halaman cart
        '/profile': (context) {
          final username = ModalRoute.of(context)!.settings.arguments as String; // Ambil argumen username dengan tipe String
          return ProfilePage(username: username); // Ganti dengan halaman profile
        },
      },
    );
  }
}
