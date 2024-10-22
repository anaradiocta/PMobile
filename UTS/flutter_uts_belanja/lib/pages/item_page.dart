import 'package:flutter/material.dart';
import 'package:flutter_uts_belanja/models/item.dart'; // Pastikan model Item sudah didefinisikan

class ItemPage extends StatelessWidget {
  final Item item;

  const ItemPage({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(item.name),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              item.imageUrl,
              height: 200,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 16.0),
            Text(
              item.name,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8.0),
            Text(
              'Harga: Rp ${item.price}',
              style: const TextStyle(fontSize: 18, color: Colors.green),
            ),
            const SizedBox(height: 8.0),
            Text(
              'Stok: ${item.stock}',
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 8.0),
            Text(
              'Rating: ${item.rating}',
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                // Navigasi ke halaman About
                Navigator.pushNamed(context, '/about', arguments: item);
              },
              child: const Text('Detail'),
            ),
          ],
        ),
      ),
    );
  }
}
