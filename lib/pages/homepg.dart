import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:shoping/pages/detailpgModel.dart';
import 'package:shoping/pages/jacketctgry.dart';
import 'package:shoping/pages/pantsctgry.dart';
import 'package:shoping/pages/shirtctgry.dart';
import 'package:shoping/pages/suitctgry.dart';
import 'package:shoping/pages/tshirtctgry.dart';
import 'accountmain.dart';
import 'ctgrymain.dart';
import 'details.dart';
import 'dressctgry.dart';
import 'notificationpg.dart';
import 'ordrpg.dart';

class HomePg extends StatefulWidget {
  const HomePg({Key? key}) : super(key: key);

  @override
  _HomePgState createState() => _HomePgState();
}

class _HomePgState extends State<HomePg> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    List img = [
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

    List CtgryName = [
      'Long Sleeve Shirts',
      'Cotton Shirt',
      'Design Shirt',
      'Uniform Shirt',
      'Slive Shirt',
      'Pline Shirt',
      'Colored Shirt',
      'Jacket Shirt',
      'Formal Shirt',
      'Jeans Shirt',
      'Sex Shirt',
      'Festival Shirt',
      'Design Shirt',
      'Uniform Shirt',
      'Sky Shirt',
      'Hot Shirt',
      'Cold Shirt',
      'Summer Shirt',
      'Cool Shirt',
      'Formal Shirt',
    ];

    final List<DetailpgModel> detailsData =
        List.generate(20, (index) => DetailpgModel('${img[index]}'));

    return Scaffold(
      key: _scaffoldKey,
      drawer: Drawer(
        backgroundColor: Colors.white,
        elevation: 1,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 40),
              child: CircleAvatar(
                maxRadius: 60,
                backgroundColor: Colors.grey,
                child: Image.asset(
                  'assets/img/logo1.png',
                  width: 200,
                  height: 200,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: ListTile(
                leading: Icon(
                  Icons.account_circle,
                  color: Colors.green,
                ),
                title: Text('Himanshu Viroja'),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.mail,
                color: Colors.orangeAccent,
              ),
              title: Text('vhimanshu9723@gmail.com'),
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => HomePg()));
              },
              leading: Icon(
                Icons.home,
                color: Colors.blue,
              ),
              title: Text('Home Page'),
            ),
            ListTile(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AccMain()));
              },
              leading: Icon(
                Icons.account_circle,
                color: Colors.black,
              ),
              title: Text('My Account'),
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => OrdrPg()));
              },
              leading: Icon(
                Icons.shopping_bag_rounded,
                color: Colors.red,
              ),
              title: Text('My Orders'),
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Ctgry()));
              },
              leading: Icon(
                Icons.dashboard,
              ),
              title: Text('Categories'),
            ),
            ListTile(
              leading: Icon(
                Icons.contact_support,
                color: Colors.blueGrey,
              ),
              title: Text('Contact Us'),
            ),
            ListTile(
              leading: Icon(
                Icons.details,
                color: Colors.pink,
              ),
              title: Text('About Us'),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () => _scaffoldKey.currentState?.openDrawer(),
          icon: const Icon(
            Icons.menu,
            color: Colors.black,
          ),
        ),
        title: const Center(
          child: Text(
            'MoHHZone',
            style: TextStyle(color: Colors.black),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Notifctn()),
              );
            },
            icon: const Icon(
              Icons.notifications,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 250,
                  child: CarouselSlider(
                    options: CarouselOptions(
                      enlargeCenterPage: true,
                      enableInfiniteScroll: false,
                      autoPlay: true,
                    ),
                    items: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Stack(
                          fit: StackFit.expand,
                          children: [
                            Image.network(
                              'https://pngimg.com/uploads/dress_shirt/dress_shirt_PNG8088.png',
                              width: 400,
                              height: 150,
                            ),
                          ],
                        ),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Stack(
                          fit: StackFit.expand,
                          children: [
                            Image.network(
                              'https://pngimg.com/uploads/dress_shirt/dress_shirt_PNG8084.png',
                              width: 400,
                              height: 150,
                            ),
                          ],
                        ),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Stack(
                          fit: StackFit.expand,
                          children: [
                            Image.network(
                              'https://pngimg.com/uploads/dress_shirt/dress_shirt_PNG8089.png',
                              width: 400,
                              height: 150,
                            ),
                          ],
                        ),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Stack(
                          fit: StackFit.expand,
                          children: [
                            Image.network(
                              'https://pngimg.com/uploads/dress_shirt/dress_shirt_PNG8060.png',
                              width: 400,
                              height: 150,
                            ),
                          ],
                        ),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Stack(
                          fit: StackFit.expand,
                          children: [
                            Image.network(
                              'https://pngimg.com/uploads/dress_shirt/dress_shirt_PNG8085.png',
                              width: 400,
                              height: 150,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const Text(
                  "Explore",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
                const Text(
                  "Best Outfits For You",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Colors.black26,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Form(
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: "Search items...",
                        filled: true,
                        fillColor: Colors.white,
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        prefixIcon: const Icon(Icons.search),
                        suffixIcon: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Ctgry()));
                            },
                            child: const Icon(Icons.apps)),
                      ),
                    ),
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 8),
                        child: OutlinedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Dresss(),
                              ),
                            );
                          },
                          style: OutlinedButton.styleFrom(
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(20),
                              ),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(4),
                            child: Column(
                              children: [
                                Image.asset(
                                  'assets/ctgryimg/dress2.png',
                                  height: 50,
                                  width: 50,
                                ),
                                const SizedBox(
                                  height: 10,
                                  width: 20,
                                ),
                                const Text(
                                  'Dress',
                                  style: TextStyle(color: Colors.black),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8, left: 10),
                        child: OutlinedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Shirt(),
                              ),
                            );
                          },
                          style: OutlinedButton.styleFrom(
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(20),
                              ),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(4),
                            child: Column(
                              children: [
                                Image.asset(
                                  'assets/ctgryimg/02.png',
                                  height: 50,
                                  width: 50,
                                ),
                                const SizedBox(
                                  height: 10,
                                  width: 20,
                                ),
                                const Text(
                                  'Shirt',
                                  style: TextStyle(color: Colors.black),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8, left: 10),
                        child: OutlinedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Tshirt(),
                              ),
                            );
                          },
                          style: OutlinedButton.styleFrom(
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(20),
                              ),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(4),
                            child: Column(
                              children: [
                                Image.asset(
                                  'assets/ctgryimg/03.png',
                                  height: 50,
                                  width: 50,
                                ),
                                const SizedBox(
                                  height: 10,
                                  width: 20,
                                ),
                                const Text(
                                  'T-shirt',
                                  style: TextStyle(color: Colors.black),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8, left: 10),
                        child: OutlinedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Pants(),
                              ),
                            );
                          },
                          style: OutlinedButton.styleFrom(
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(20),
                              ),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(4),
                            child: Column(
                              children: [
                                Image.asset(
                                  'assets/ctgryimg/04.png',
                                  height: 50,
                                  width: 50,
                                ),
                                const SizedBox(
                                  height: 10,
                                  width: 20,
                                ),
                                const Text(
                                  'Pants',
                                  style: TextStyle(color: Colors.black),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8, left: 10),
                        child: OutlinedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Suit(),
                              ),
                            );
                          },
                          style: OutlinedButton.styleFrom(
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(20),
                              ),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(4),
                            child: Column(
                              children: [
                                Image.asset(
                                  'assets/ctgryimg/05.png',
                                  height: 50,
                                  width: 50,
                                ),
                                const SizedBox(
                                  height: 10,
                                  width: 20,
                                ),
                                const Text(
                                  'Suit',
                                  style: TextStyle(color: Colors.black),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8, left: 10),
                        child: OutlinedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Jacket(),
                              ),
                            );
                          },
                          style: OutlinedButton.styleFrom(
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(20),
                              ),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(4),
                            child: Column(
                              children: [
                                Image.asset(
                                  'assets/ctgryimg/06.png',
                                  height: 50,
                                  width: 50,
                                ),
                                const SizedBox(
                                  height: 10,
                                  width: 20,
                                ),
                                const Text(
                                  'Jacket',
                                  style: TextStyle(color: Colors.black),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'New Arrival',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w500),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'See All',
                        style: TextStyle(color: Colors.black54),
                      ),
                    ),
                  ],
                ),
                GridView.builder(
                    physics: ScrollPhysics(),
                    scrollDirection: Axis.vertical,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisSpacing: 5,
                      mainAxisSpacing: 5,
                      crossAxisCount: 2,
                    ),
                    itemCount: 20,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              children: [
                                GestureDetector(
                                  child: Container(
                                    width: 150,
                                    height: 130,
                                    decoration: const BoxDecoration(
                                      color: Colors.grey,
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(20),
                                      ),
                                    ),
                                    child: Image.network(
                                      detailsData[index].ImageUrl,
                                      height: 110,
                                    ),
                                  ),
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => Details(
                                          detailpgModel: detailsData[index],
                                        ),
                                      ),
                                    );
                                  },
                                ),
                                Container(
                                  padding: const EdgeInsets.all(10),
                                  width: 150,
                                  decoration: const BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(20),
                                    ),
                                  ),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: Text(
                                          CtgryName[index],
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                      Text(
                                        "\$165",
                                        style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ]);
                    }),
              ],
            ),
          ),
        ],
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
                  color: Colors.red,
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
                  MaterialPageRoute(
                    builder: (context) => OrdrPg(),
                  ),
                );
              },
              icon: const Icon(
                Icons.shopping_cart,
              ),
            ),
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Notifctn(),
                  ),
                );
              },
              icon: const Icon(
                Icons.notifications,
              ),
            ),
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AccMain(),
                  ),
                );
              },
              icon: const Icon(
                Icons.account_circle,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
