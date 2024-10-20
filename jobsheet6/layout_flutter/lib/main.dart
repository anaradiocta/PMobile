import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    Color color = Theme.of(context).primaryColor;

    // Membuat kolom bagian kiri pada judul
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    'Wisata Paralayang Batu',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'Batu, Malang, Indonesia',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          const Icon(
            Icons.star,
            size: 18,
            color: Colors.red,
          ),
          const Text(
            "41",
            style: TextStyle(fontSize: 12),
          ),
        ],
      ),
    );

    // Membuat button section
    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.call, 'CALL'),
        _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
        _buildButtonColumn(color, Icons.share, 'SHARE'),
      ],
    );

    Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: const Text(
        'Paralayang di Kota Batu, Malang, menawarkan sensasi terbang di atas keindahan alam dengan pemandangan memukau. Dari ketinggian, wisatawan dapat menikmati panorama Kota Batu yang dikelilingi oleh Gunung Panderman, Arjuno, dan Kawi, serta udara sejuk khas pegunungan.\n'
        'Destinasi ini tidak hanya cocok bagi para pecinta adrenalin, tetapi juga bagi siapa saja yang ingin merasakan pengalaman berbeda menikmati keindahan alam dari atas langit.\n\n '
        'ANARADI OCTA LAVECHIA | 2241760007 ',
        softWrap: true,
      ),
    );

    return MaterialApp(
      title: 'Flutter layout: ANARADI OCTA LAVECHIA - 2241760007',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter layout demo'),
        ),
        body: ListView(
          children: [
            Image.asset(
              'images/paralayang.jpg',
              width: 600,
              height: 300,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection, // Tambahkan buttonSection ke body
            textSection
          ],
        ),
        ),
      );
  }

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: Colors.blue),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],

    );
  }
}
