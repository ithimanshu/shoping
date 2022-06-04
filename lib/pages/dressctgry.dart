import 'package:flutter/material.dart';
import 'package:shoping/pages/homepg.dart';

class Dresss extends StatefulWidget {
  const Dresss({Key? key}) : super(key: key);

  @override
  _DresssState createState() => _DresssState();
}

class _DresssState extends State<Dresss> {

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
            'Dress',
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
            'https://pngimg.com/uploads/dress/dress_PNG183.png',
            'https://pngimg.com/uploads/dress/dress_PNG179.png',
            'https://pngimg.com/uploads/dress/dress_PNG178.png',
            'https://pngimg.com/uploads/dress/dress_PNG180.png',
            'https://pngimg.com/uploads/dress/dress_PNG170.png',
            'https://pngimg.com/uploads/dress/dress_PNG162.png',
            'https://pngimg.com/uploads/dress/dress_PNG165.png',
            'https://pngimg.com/uploads/dress/dress_PNG156.png',
            'https://pngimg.com/uploads/dress/dress_PNG150.png',
            'https://pngimg.com/uploads/dress/dress_PNG149.png',
            'https://pngimg.com/uploads/dress/dress_PNG129.png',
            'https://pngimg.com/uploads/dress/dress_PNG127.png',
            'https://pngimg.com/uploads/dress/dress_PNG115.png',
            'https://pngimg.com/uploads/dress/dress_PNG113.png',
            'https://pngimg.com/uploads/dress/dress_PNG102.png',
            'https://pngimg.com/uploads/dress/dress_PNG96.png',
            'https://pngimg.com/uploads/dress/dress_PNG88.png',
            'https://pngimg.com/uploads/dress/dress_PNG45.png',
            'https://pngimg.com/uploads/dress/dress_PNG30.png',
            'https://pngimg.com/uploads/dress/dress_PNG29.png',
            'https://pngimg.com/uploads/dress/dress_PNG1.png',
            'https://pngimg.com/uploads/dress/dress_PNG3.png',
            'https://pngimg.com/uploads/dress/dress_PNG2.png',
            'https://pngimg.com/uploads/dress/dress_PNG6.png',
            'https://pngimg.com/uploads/dress/dress_PNG8.png',
            'https://pngimg.com/uploads/dress/dress_PNG10.png',
            'https://pngimg.com/uploads/dress/dress_PNG16.png',
            'https://pngimg.com/uploads/dress/dress_PNG20.png',
            'https://pngimg.com/uploads/dress/dress_PNG19.png',
            'https://pngimg.com/uploads/dress/dress_PNG22.png',
            'https://pngimg.com/uploads/dress/dress_PNG25.png',
            'https://pngimg.com/uploads/dress/dress_PNG24.png',
            'https://pngimg.com/uploads/dress/dress_PNG29.png',
            'https://pngimg.com/uploads/dress/dress_PNG31.png',
            'https://pngimg.com/uploads/dress/dress_PNG32.png',
            'https://pngimg.com/uploads/dress/dress_PNG33.png',
            'https://pngimg.com/uploads/dress/dress_PNG35.png',
            'https://pngimg.com/uploads/dress/dress_PNG36.png',
            'https://pngimg.com/uploads/dress/dress_PNG40.png',
            'https://pngimg.com/uploads/dress/dress_PNG48.png',
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
