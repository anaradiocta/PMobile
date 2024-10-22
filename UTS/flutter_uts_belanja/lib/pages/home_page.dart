import 'package:flutter/material.dart';
import 'package:flutter_uts_belanja/models/item.dart'; // Pastikan kamu memiliki model Item

class HomePage extends StatefulWidget {
  final String username; // Tambahkan username
  final String category;

  const HomePage({super.key, required this.username, required this.category});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late List<Item> items;

  @override
  void initState() {
    super.initState();
    items = _loadItems(widget.category); // Load items berdasarkan kategori
  }

  List<Item> _loadItems(String category) {
    if (category == 'makanan') {
      return [
        Item(name: 'Macaron', price: 5000, stock: 10, rating: 4.5, imageUrl: 'images/macaron.JPG'),
        Item(name: 'Ramyeon', price: 2000, stock: 20, rating: 4.0, imageUrl: 'images/ramyeon.JPG'),
      ];
    } else if (category == 'minuman') {
      return [
        Item(name: 'Soda', price: 3000, stock: 15, rating: 4.5, imageUrl: 'images/soda.JPG'),
        Item(name: 'Juice', price: 2500, stock: 25, rating: 4.0, imageUrl: 'images/juice.JPG'),
      ];
    } else {
      return []; // Kasus default
    }
  }

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    switch (index) {
      case 0:
        Navigator.pushReplacementNamed(context, '/home', arguments: {
          'username': widget.username,
          'category': widget.category,
        });
        break;
      case 1:
        Navigator.pushNamed(context, '/cart'); // Navigasi ke halaman Cart
        break;
      case 2:
        Navigator.pushNamed(context, '/profile', arguments: widget.username); // Navigasi ke halaman Profile
        break;
    }
  }

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shopping List'),
        backgroundColor: Colors.teal,
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(10),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 2 / 3, // Adjust the aspect ratio for better visuals
        ),
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return InkWell(
            onTap: () {
              // Navigate to ItemPage with item data
              Navigator.pushNamed(
                context,
                '/item',
                arguments: item,
              );
            },
            child: Hero(
              tag: item.name,
              child: Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: ClipRRect(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15),
                        ),
                        child: Image.asset(
                          item.imageUrl,
                          fit: BoxFit.cover,
                          width: double.infinity,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            item.name,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            'Rp ${item.price}',
                            style: const TextStyle(
                              fontSize: 14,
                              color: Colors.teal,
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            'Stock: ${item.stock}',
                            style: const TextStyle(fontSize: 12, color: Colors.grey),
                          ),
                          const SizedBox(height: 4),
                          Row(
                            children: [
                              const Icon(
                                Icons.star,
                                color: Colors.amber,
                                size: 14,
                              ),
                              const SizedBox(width: 4),
                              Text(
                                '${item.rating}',
                                style: const TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
          _onItemTapped(index);
        },
        selectedItemColor: Colors.teal,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.store),
            label: 'Beranda',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
