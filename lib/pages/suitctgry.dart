import 'package:flutter/material.dart';
import 'package:shoping/pages/homepg.dart';

class Suit extends StatefulWidget {
  const Suit({Key? key}) : super(key: key);

  @override
  _SuitState createState() => _SuitState();
}

class _SuitState extends State<Suit> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading:  IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const HomePg(),
              ),
            );
          },
        ),
        title: const Center(
          child: Text(
            'Suit',
            style: TextStyle(color: Colors.black),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const HomePg(),
                ),
              );
            },
            icon:  Icon(
              Icons.favorite,
              color: Colors.red,
            ),
          ),
        ],
      ),
      body: GridView.count(
          crossAxisCount: 3,
          childAspectRatio: 1.0,
          padding: const EdgeInsets.all(4.0),
          mainAxisSpacing: 4.0,
          crossAxisSpacing: 4.0,
          children: <String>[
            'https://pngimg.com/uploads/suit/suit_PNG93253.png',
            'https://pngimg.com/uploads/suit/suit_PNG93252.png',
            'https://pngimg.com/uploads/suit/suit_PNG93251.png',
            'https://pngimg.com/uploads/suit/suit_PNG93250.png',
            'https://pngimg.com/uploads/suit/suit_PNG93243.png',
            'https://pngimg.com/uploads/suit/suit_PNG93243.png',
            'https://pngimg.com/uploads/suit/suit_PNG93239.png',
            'https://pngimg.com/uploads/suit/suit_PNG93228.png',
            'https://pngimg.com/uploads/suit/suit_PNG93215.png',
            'https://pngimg.com/uploads/suit/suit_PNG8135.png',
            'https://pngimg.com/uploads/suit/suit_PNG8118.png',
            'https://pngimg.com/uploads/suit/suit_PNG8123.png',
            'https://pngimg.com/uploads/suit/suit_PNG8136.png',
            'https://pngimg.com/uploads/suit/suit_PNG8121.png',
            'https://pngimg.com/uploads/suit/suit_PNG8119.png',
            'https://pngimg.com/uploads/suit/suit_PNG8122.png',
          ].map((String url) {
            return GridTile(
              child: Container(
                width: 100,
                height: 100,
                decoration: const BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                child: Image.network(url,height: 70,width: 70),
              ),
            );
          }).toList()),
    );
  }
}
