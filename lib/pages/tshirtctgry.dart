import 'package:flutter/material.dart';
import 'package:shoping/pages/homepg.dart';

class Tshirt extends StatefulWidget {
  const Tshirt({Key? key}) : super(key: key);

  @override
  _TshirtState createState() => _TshirtState();
}

class _TshirtState extends State<Tshirt> {

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
            'T - shirt',
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
            'https://freepngimg.com/thumb/tshirt/13-white-t-shirt-png-image-thumb.png',
            'https://freepngimg.com/thumb/tshirt/5-t-shirt-png-image-thumb.png',
            'https://freepngimg.com/thumb/tshirt/1-t-shirt-png-image-thumb.png',
            'https://freepngimg.com/thumb/tshirt/8-green-t-shirt-png-image-thumb.png',
            'https://freepngimg.com/thumb/tshirt/27732-8-black-t-shirt-thumb.png',
            'https://freepngimg.com/thumb/tshirt/3-t-shirt-png-image-thumb.png',
            'https://freepngimg.com/thumb/tshirt/20-t-shirt-png-image-thumb.png',
            'https://freepngimg.com/thumb/tshirt/6-t-shirt-png-image-thumb.png',
            'https://freepngimg.com/thumb/tshirt/14-man-in-white-t-shirt-png-image-thumb.png',
            'https://freepngimg.com/thumb/tshirt/11-t-shirt-png-image-thumb.png',
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
