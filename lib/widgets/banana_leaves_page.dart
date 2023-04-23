import 'package:flutter/material.dart';

class BananaLeavesPage extends StatefulWidget {
  const BananaLeavesPage({Key? key}) : super(key: key);

  @override
  _BananaLeavesPageState createState() => _BananaLeavesPageState();
}

class _BananaLeavesPageState extends State<BananaLeavesPage> {
  String imageUrl =
      'https://static.vecteezy.com/system/resources/previews/010/870/502/original/green-banana-leaf-isolated-on-white-background-png.png';
  String description =
      'This is not the first time bananas have faced wipe-out, explains Fernando García-Bastidas, a researcher in plant health who studied TR4 at the University of Wageningen in the Netherlands before moving to a Dutch plant genetics company trying to tackle the disease.';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nature Inc.'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Image.network(imageUrl),
          const Text(
            'SYPIX',
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
              letterSpacing: 10.0,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Text(
              description,
              textAlign: TextAlign.justify,
            ),
          ),
          const SizedBox(
            height: 60.0,
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text('Get started'),
          )
        ],
      ),
    );
  }
}
