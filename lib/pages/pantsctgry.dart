import 'package:flutter/material.dart';
import 'package:shoping/pages/homepg.dart';

class Pants extends StatefulWidget {
  const Pants({Key? key}) : super(key: key);

  @override
  _PantsState createState() => _PantsState();
}

class _PantsState extends State<Pants> {

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
            'Pants',
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
          'https://freepngimg.com/thumb/pant/37050-2-mens-pant-hd-thumb.png',
            'https://freepngimg.com/thumb/pant/37331-5-mens-pant-photos-thumb.png',
            'http://clipart-library.com/image_gallery2/Trouser-PNG-Image.png',
            'https://www.pngall.com/wp-content/uploads/5/Pant-PNG-Images.png',
            'https://www.pngall.com/wp-content/uploads/5/Pant-PNG-Photo.png',
            'https://www.pngall.com/wp-content/uploads/5/Pant-PNG-Transparent-HD-Photo.png',
            'https://www.pngall.com/wp-content/uploads/5/Cotton-Pant-PNG-Download-Image-1.png',
            'https://www.pngall.com/wp-content/uploads/5/Cotton-Pant-PNG-File-Download-Free.png',
            'https://www.pngall.com/wp-content/uploads/5/Cotton-Pant-PNG-File-Download-Free.png',
            'https://www.pngall.com/wp-content/uploads/5/Cotton-Pant-PNG-Clipart-1.png',
            'https://www.pngall.com/wp-content/uploads/5/Cotton-Pant-PNG-Free-Image-1.png',
            'https://www.pngall.com/wp-content/uploads/5/Cotton-Pant-PNG-Transparent-HD-Photo.png',
            'https://www.pngall.com/wp-content/uploads/5/Pant-PNG-Image-File.png',
            'https://www.pngall.com/wp-content/uploads/5/Cotton-Pant-PNG-Transparent-HD-Photo.png',
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
