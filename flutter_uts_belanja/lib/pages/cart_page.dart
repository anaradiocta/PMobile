import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Dummy data for cart items (replace with your actual cart management logic)
    final List<String> cartItems = ['Macaron', 'Soda']; // Contoh item di keranjang

    return Scaffold(
      appBar: AppBar(
        title: const Text('Keranjang Belanja'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: cartItems.isNotEmpty
            ? ListView.builder(
                itemCount: cartItems.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(cartItems[index]),
                  );
                },
              )
            : const Center(
                child: Text('Keranjang Anda kosong!'),
              ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton(
            onPressed: () {
              // Tambahkan logika checkout di sini
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Checkout belum diimplementasikan')),
              );
            },
            child: const Text('Checkout'),
          ),
        ),
      ),
    );
  }
}
