import 'package:flutter/material.dart';

import 'ctgrymain.dart';
import 'homepg.dart';
import 'notificationpg.dart';
import 'ordrpg.dart';

class AccMain extends StatefulWidget {
  const AccMain({Key? key}) : super(key: key);

  @override
  State<AccMain> createState() => _AccMainState();
}

class _AccMainState extends State<AccMain> {
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
            'Account',
            style: TextStyle(color: Colors.black),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {

            },
            icon: const Icon(
              Icons.search,
              color: Colors.black,
            ),
          ),
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => OrdrPg()),
              );
            },
            icon: const Icon(
              Icons.shopping_cart,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: CircleAvatar(
                      backgroundColor: Colors.transparent,
                      maxRadius: 40,
                      child: Icon(
                        Icons.account_circle,
                        size: 60,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      'Himanshu Viroja',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 140),
                    child: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 3,
                child: Container(
                  color: Colors.grey,
                ),
              ),
              ListTile(
                leading: Icon(Icons.help),
                title: Text('Help Center'),
              ),
              ListTile(
                leading: Icon(Icons.shopping_bag_outlined),
                title: Text('My Followed Shop'),
              ),
              ListTile(
                leading: Icon(Icons.food_bank_outlined),
                title: Text('My Bank Details'),
              ),
              ListTile(
                leading: Icon(Icons.share),
                title: Text('My Shared Product'),
              ),
              ListTile(
                leading: Icon(Icons.payment),
                title: Text('My Payments'),
              ),
              ListTile(
                leading: Icon(Icons.shopping_bag_outlined),
                title: Text('Spin'),
              ),
              ListTile(
                leading: Icon(Icons.credit_card),
                title: Text('MohhApp Credit'),
              ),
              ListTile(
                leading: Icon(Icons.shopping_bag),
                title: Text('Become a Supplier'),
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Settings'),
              ),
              ListTile(
                leading: Icon(Icons.notifications),
                title: Text('notification Settings'),
              ),
              ListTile(
                leading: Icon(Icons.policy),
                title: Text('Legal and Policies'),
              ),
              ListTile(
                leading: Icon(Icons.logout),
                title: Text('Logout'),
              ),
            ],
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
                  MaterialPageRoute(
                    builder: (context) => const HomePg(),
                  ),
                );
              },
              icon: const Icon(
                Icons.home,
              ),
            ),
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Ctgry(),
                  ),
                );
              },
              icon: const Icon(Icons.category),
            ),
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => OrdrPg(),
                  ),
                );
              },
              icon: const Icon(Icons.shopping_cart),
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
              icon: const Icon(Icons.notifications),
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
                color: Colors.red,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
