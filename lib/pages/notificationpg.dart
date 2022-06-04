import 'package:flutter/material.dart';

import 'accountmain.dart';
import 'ctgrymain.dart';
import 'homepg.dart';
import 'ordrpg.dart';

class Notifctn extends StatefulWidget {
  const Notifctn({Key? key}) : super(key: key);

  @override
  State<Notifctn> createState() => _NotifctnState();
}

class _NotifctnState extends State<Notifctn> {

  List massage = [
    'Announcement..',
    'Create your Account in App',
    'Please Update the App',
    'best Selling And Profite Plans',
    'Update Your Account details in Bank Account',
    'Your payment Delay on 2 Days',
    'Your Order Is Successfull',
    'Your Payment Is Pendding',
    'Best Discount in Sell Shop',
    'requested Accept...',
  ];

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
            'Notifications',
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
      body: ListView.builder(
          itemCount: 10,
          itemBuilder: (context,index) {
        return ListTile(
          title: Text(massage[index]),
          leading: Icon(Icons.assignment),
        );
      }),

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
            IconButton(onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => OrdrPg()),
              );
            }, icon: const Icon(Icons.shopping_cart)),
            IconButton(onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Notifctn()),
              );
            }, icon: const Icon(Icons.notifications,color: Colors.red,)),
            IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const AccMain()),
                  );
                }, icon: const Icon(Icons.account_circle)),
          ],
        ),
      ),
    );
  }
}
