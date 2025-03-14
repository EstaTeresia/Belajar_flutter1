import 'package:flutter/material.dart';

void main() {
  runApp(HomePage());
}

class Wisata {
  final String imageUrl;
  final String name;
  final String location;

  Wisata({
    required this.imageUrl,
    required this.name,
    required this.location,
  });
}

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List<Wisata> wisataList = [
    Wisata(
      imageUrl: 'https://picsum.photos/300/200',
      name: 'Pantai Kuta',
      location: 'Bali, Indonesia',
    ),
    Wisata(
      imageUrl: 'https://picsum.photos/300/201',
      name: 'Gunung Bromo',
      location: 'Jawa Timur, Indonesia',
    ),
    Wisata(
      imageUrl: 'https://picsum.photos/300/202',
      name: 'Danau Toba',
      location: 'Sumatera Utara, Indonesia',
    ),
    Wisata(
      imageUrl: 'https://picsum.photos/300/203',
      name: 'Candi Borobudur',
      location: 'Jawa Tengah, Indonesia',
    ),
    Wisata(
      imageUrl: 'https://picsum.photos/300/204',
      name: 'Raja Ampat',
      location: 'Papua Barat, Indonesia',
    ),
  ];

  Widget _buildCard(Wisata wisata) {
    return Card(
      child: ListTile(
        leading: Image.network(wisata.imageUrl, width: 100, height: 100, fit: BoxFit.cover),
        title: Text(wisata.name, style: TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(wisata.location),
        trailing: Icon(Icons.location_on, color: Colors.redAccent),
      ),
    );
  }

  @override
  build(context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue[800],
          leading: const Icon(Icons.home),
          title: const Text('Tempat Wisata Indonesia'),
        ),
        body: ListView.builder(
          itemCount: wisataList.length,
          itemBuilder: (context, index) {
            return _buildCard(wisataList[index]);
          },
        ),
      ),
    );
  }
}