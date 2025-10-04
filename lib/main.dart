import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  Widget buildTitleSection() {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    'Wisata Petik Strawberry di Batu',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                const Text(
                  'Batu, Malang, Indonesia',
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ),
          const Icon(Icons.star, color: Colors.red),
          const Text('41'),
        ],
      ),
    );
  }

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
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

  @override
  Widget build(BuildContext context) {
    Color color = Theme.of(context).primaryColor;

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
        'Wisata Petik Strawberry di Batu merupakan salah satu destinasi favorit keluarga untuk menikmati suasana alam dan memetik buah strawberry langsung dari kebunnya. '
        'Selain menawarkan pengalaman edukatif, pengunjung juga dapat menikmati keindahan alam pegunungan yang sejuk dan asri. '
        'Tempat ini sangat cocok untuk rekreasi bersama keluarga maupun teman. '
        'Nama: Dinarul Lailil Mubarokah\n'
        'NIM: 2341760093',
        softWrap: true,
      ),
    );

    return MaterialApp(
      title: 'Flutter layout: Dinarul Lailil Mubarokah, 2341760093',
      home: Scaffold(
        appBar: AppBar(title: const Text('Flutter layout demo')),
        body: ListView(
          children: [
            Image.asset(
              'images/petik strawberry.jpg',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            buildTitleSection(),
            buttonSection, // tambahkan buttonSection di sini
            textSection, // tambahkan textSection di sini
          ],
        ),
      ),
    );
  }
}
