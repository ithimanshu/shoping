import 'package:flutter/material.dart';
import 'package:shoping/pages/homepg.dart';

class Shirt extends StatefulWidget {
  const Shirt({Key? key}) : super(key: key);

  @override
  _ShirtState createState() => _ShirtState();
}

class _ShirtState extends State<Shirt> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
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
            'Shirt',
            style: TextStyle(color: Colors.black),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
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
            "https://freepngimg.com/thumb/dress%20shirt/4-black-dress-shirt-png-image.png",
            "https://freepngimg.com/thumb/dress%20shirt/38-white-dress-shirt-png-image-thumb.png",
            "https://freepngimg.com/thumb/dress%20shirt/51-dress-shirt-png-image-thumb.png",
            "https://freepngimg.com/thumb/dress%20shirt/21-dress-shirt-png-image-thumb.png",
            "https://freepngimg.com/thumb/dress%20shirt/12-dress-shirt-png-image-thumb.png",
            "https://freepngimg.com/thumb/dress%20shirt/15-dress-shirt-png-image-thumb.png",
            "https://freepngimg.com/thumb/dress%20shirt/40-dress-shirt-png-image-thumb.png",
            "https://freepngimg.com/thumb/dress%20shirt/58-dress-shirt-png-image-thumb.png",
            "https://freepngimg.com/thumb/dress%20shirt/56-dress-shirt-png-image-thumb.png",
            "https://freepngimg.com/thumb/dress%20shirt/33-pink-dress-shirt-png-image-thumb.png",
            "https://freepngimg.com/thumb/dress%20shirt/54-white-dress-shirt-png-image-thumb.png",
            "https://freepngimg.com/thumb/dress%20shirt/46-white-dress-shirt-png-image-thumb.png",
            "https://freepngimg.com/thumb/dress%20shirt/39-dress-shirt-png-image-thumb.png",
            "https://freepngimg.com/thumb/dress%20shirt/55-dress-shirt-png-image-thumb.png",
            "https://freepngimg.com/thumb/dress%20shirt/35-dress-shirt-png-image-thumb.png",
            "https://freepngimg.com/thumb/dress%20shirt/29-dress-shirt-png-image-thumb.png",
            "https://www.pngmart.com/files/8/Dress-Shirt-PNG-Image-HD.png",
            "https://www.pngmart.com/files/8/Dress-Shirt-PNG-Transparent.png",
            "https://www.pngmart.com/files/8/Dress-Shirt-PNG-Clipart-Background.png",
            "https://www.pngmart.com/files/3/Polo-Shirt-PNG-Image.png",
            "https://www.pngmart.com/files/3/Polo-Shirt-PNG-Transparent-Image.png",
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
                child: Image.network(url, height: 70, width: 70),
              ),
            );
          }).toList()),
    );
  }
}
