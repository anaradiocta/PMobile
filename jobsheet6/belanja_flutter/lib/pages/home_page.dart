import 'package:flutter/material.dart';
import 'package:belanja_flutter/models/item.dart';


class HomePage extends StatelessWidget {
  // Daftar item dengan atribut tambahan (foto, stok, rating)
  final List<Item> items = [
    Item(
      name: 'Sugar',
      price: 5000,
      stock: 10,
      rating: 4.5,
      imageUrl: 'images/sugar.jpg',
    ),
    Item(
      name: 'Salt',
      price: 2000,
      stock: 20,
      rating: 4.0,
      imageUrl: 'images/salt.jpg',
    ),
  ];

  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shopping List'),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(8),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // Dua item per baris seperti di marketplace
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
        ),
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return InkWell(
            onTap: () {
              // Navigasi ke halaman ItemPage dengan mengirim data item
              Navigator.pushNamed(
                context,
                '/item',
                arguments: item,
              );
            },
            child: Hero(
              tag: item.name, // Menggunakan nama sebagai tag Hero
              child: Card(
                child: Column(
                  children: [
                    Expanded(
                      child: Image.asset(
                        item.imageUrl,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(item.name),
                    ),
                    Text('Rp ${item.price}'),
                    Text('Stock: ${item.stock}'),
                    Text('Rating: ${item.rating}'),
                  ],
                ),
              ),
            ),
          );
        },
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(8),
        child: Text(
          'Nama: [ANARADI OCTA LAVECHIA], NIM: [2241760007]',
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
