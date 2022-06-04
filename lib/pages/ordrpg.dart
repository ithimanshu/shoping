import 'package:flutter/material.dart';
import 'package:shoping/pages/payment.dart';

import 'accountmain.dart';
import 'ctgrymain.dart';
import 'detailpgModel.dart';
import 'homepg.dart';
import 'notificationpg.dart';

class OrdrPg extends StatefulWidget {
   const OrdrPg({Key? key}) : super(key: key);


  @override
  State<OrdrPg> createState() => _OrdrPgState();
}

class _OrdrPgState extends State<OrdrPg> {

  List immg = [
    'https://freepngimg.com/thumb/shoes/27428-5-nike-shoes-transparent-background-thumb.png',
    'https://freepngimg.com/thumb/sunglasses/25303-8-sunglasses-photos-thumb.png',
    'https://freepngimg.com/thumb/cap/19-baseball-cap-png-image-thumb.png',
    'https://freepngimg.com/thumb/backpack/4-sport-backpack-png-image-thumb.png',
    'https://freepngimg.com/thumb/tshirt/16-t-shirt-png-image-thumb.png',
    'https://freepngimg.com/thumb/jacket/16-jacket-png-image-thumb.png',
    'https://freepngimg.com/thumb/shoes/21860-7-red-shoes-thumb.png',
    'https://freepngimg.com/thumb/jacket/2-leather-jacket-png-image-thumb.png',
    'https://freepngimg.com/thumb/women%20shoes/11-women-shoes-png-image-thumb.png',
    'https://freepngimg.com/thumb/tshirt/1-t-shirt-png-image-thumb.png',
    'https://freepngimg.com/thumb/dress/31614-8-dress-picture-thumb.png',
    'https://freepngimg.com/thumb/backpack/11-military-backpack-png-image-thumb.png',
    'https://freepngimg.com/thumb/dress%20shirt/38-white-dress-shirt-png-image-thumb.png',
    'https://freepngimg.com/thumb/polo%20shirt/15-polo-shirt-png-image-thumb.png',
    'https://freepngimg.com/thumb/jewellery/26560-2-jewellery-model-transparent-background-thumb.png',
    'https://freepngimg.com/thumb/dress/31618-6-dress-photo-thumb.png',
    'https://freepngimg.com/thumb/backpack/16-sport-backpack-png-image-thumb.png',
    'https://freepngimg.com/thumb/watch/22793-5-rolex-watch-clipart-thumb.png',
    'https://freepngimg.com/thumb/jewellery/27182-7-jewellery-necklace-transparent-thumb.png',
    'https://freepngimg.com/thumb/makeup/27722-5-makeup-transparent-thumb.png',
  ];

  List Pname = [
    'Shoes',
    'Black Goggles',
    'Cap',
    'Bags',
    'T-Shirt',
    'Jackets',
    'Red Shoes',
    'Stylist Jacket',
    'Red Hills',
    'White Tshirt',
    'Dress',
    'Tour Bags',
    'Shirt',
    'T-Shirt',
    'Saari',
    'Red Dress',
    'Bags',
    'Watch',
    'Jawellry',
    'Skin Tools',
  ];

  List imgg = [
    'https://pngimg.com/uploads/dress_shirt/dress_shirt_PNG8117.png',
    'https://pngimg.com/uploads/dress_shirt/dress_shirt_PNG8113.png',
    'https://pngimg.com/uploads/dress_shirt/dress_shirt_PNG8088.png',
    'https://pngimg.com/uploads/dress_shirt/dress_shirt_PNG8090.png',
    'https://pngimg.com/uploads/dress_shirt/dress_shirt_PNG8087.png',
    'https://pngimg.com/uploads/dress_shirt/dress_shirt_PNG8084.png',
    'https://pngimg.com/uploads/dress_shirt/dress_shirt_PNG8083.png',
    'https://pngimg.com/uploads/dress_shirt/dress_shirt_PNG8082.png',
    'https://pngimg.com/uploads/dress_shirt/dress_shirt_PNG8081.png',
    'https://pngimg.com/uploads/dress_shirt/dress_shirt_PNG8079.png',
    'https://pngimg.com/uploads/dress_shirt/dress_shirt_PNG8075.png',
    'https://pngimg.com/uploads/dress_shirt/dress_shirt_PNG8074.png',
    'https://pngimg.com/uploads/dress_shirt/dress_shirt_PNG8069.png',
    'https://pngimg.com/uploads/dress_shirt/dress_shirt_PNG8068.png',
    'https://pngimg.com/uploads/dress_shirt/dress_shirt_PNG8062.png',
    'https://pngimg.com/uploads/dress_shirt/dress_shirt_PNG8061.png',
    'https://pngimg.com/uploads/dress_shirt/dress_shirt_PNG8060.png',
    'https://pngimg.com/uploads/dress_shirt/dress_shirt_PNG8073.png',
    'https://pngimg.com/uploads/dress_shirt/dress_shirt_PNG8085.png',
    'https://pngimg.com/uploads/dress_shirt/dress_shirt_PNG8089.png',
  ];





  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            )),
        title: const Center(
          child: Text(
            'Orders',
            style: TextStyle(color: Colors.black),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              color: Colors.black,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.shopping_cart,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.only(left: 20, top: 10),
          child: Column(
            children: [
              ListView.builder(
              physics: ScrollPhysics(),
                padding: EdgeInsets.only(top: 10),
                  itemCount: imgg.length,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return ListTile(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Payment()));
                      },
                      contentPadding: EdgeInsets.only(top: 15),
                      leading: Container(
                        height: 100,
                        width: 100,
                        color: Colors.grey,
                        child: Image.network(imgg[index]),
                      ),
                      title: Text(Pname[index]),
                      trailing: Container(
                        height: 30,
                        width: 30,
                        color: Colors.white,
                        child: Text(
                          '499',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    );
                  }),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 50,
            ),
            IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const HomePg()),
                  );
                },
                icon: const Icon(
                  Icons.home,
                )),
            IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Ctgry()),
                  );
                },
                icon: const Icon(Icons.category)),
            IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => OrdrPg()),
                  );
                },
                icon: const Icon(Icons.shopping_cart,color: Colors.red,)),
            IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Notifctn()),
                  );
                },
                icon: const Icon(Icons.notifications)),
            IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const AccMain()),
                  );
                },
                icon: const Icon(Icons.account_circle)),
          ],
        ),
      ),
    );
  }
}
