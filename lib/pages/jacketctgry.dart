import 'package:flutter/material.dart';
import 'package:shoping/pages/homepg.dart';

class Jacket extends StatefulWidget {
  const Jacket({Key? key}) : super(key: key);

  @override
  _JacketState createState() => _JacketState();
}

class _JacketState extends State<Jacket> {

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
            'Jacket',
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
            'https://freepngimg.com/thumb/jacket/3-jacket-png-image-thumb.png',
            'https://freepngimg.com/thumb/jacket/16-jacket-png-image-thumb.png',
            'https://freepngimg.com/thumb/jacket/2-leather-jacket-png-image-thumb.png',
            'https://freepngimg.com/thumb/jacket/8-red-jacket-png-image-thumb.png',
            'https://freepngimg.com/thumb/jacket/13-jacket-png-image-thumb.png',
            'https://freepngimg.com/thumb/jacket/7-jacket-png-image-thumb.png',
            'https://freepngimg.com/thumb/jacket/5-green-jacket-png-image-thumb.png',
            'https://freepngimg.com/thumb/jacket/22-orange-jacket-png-image-thumb.png',
            'https://freepngimg.com/thumb/jacket/4-jacket-png-image-thumb.png',
            'https://freepngimg.com/thumb/jacket/1-jacket-png-image-thumb.png',
            'https://freepngimg.com/thumb/jacket/6-jacket-png-image-thumb.png',
            'https://freepngimg.com/thumb/jacket/10-black-jacket-png-image-thumb.png',
            'https://freepngimg.com/thumb/jacket/34-blue-jacket-png-image-thumb.png',
            'https://freepngimg.com/thumb/jacket/19-jacket-png-image-thumb.png',
            'https://freepngimg.com/thumb/jacket/20-orange-jacket-png-image-thumb.png',
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