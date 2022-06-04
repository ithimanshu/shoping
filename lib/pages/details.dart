import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shoping/pages/detailpgModel.dart';
import 'package:shoping/pages/homepg.dart';

import 'payment.dart';

class Details extends StatelessWidget {
  final DetailpgModel detailpgModel;

  const Details({required this.detailpgModel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
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
                builder: (context) =>  HomePg(),
              ),
            );
          },
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
      body: Column(
        children: [
          Image.network(
            detailpgModel.ImageUrl,
            height: 300,
            width: 300,
            fit: BoxFit.cover,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Container(
                padding: const EdgeInsets.only(
                    top: 25, right: 20, left: 10, bottom: 10),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const Expanded(
                          child: Text(
                            'Long Sleev Shirt',
                            style: TextStyle(
                              fontSize: 25,
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        const Text(
                          '\$165',
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Text(
                        'Care Instructions: Dry Clean Only',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.grey.shade600,
                        ),
                      ),
                    ),
                    Text(
                      'Fit Type: slim fit',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.grey.shade600,
                      ),
                    ),
                    Text(
                      'Material: Cotton',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.grey.shade600,
                      ),
                    ),
                    Text(
                      'Dry Clean Only',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.grey.shade600,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 8),
                      child: Center(
                        child: Text(
                          'Colors',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            padding: const EdgeInsets.all(4),
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.black),
                              shape: BoxShape.circle,
                            ),
                            child: const CircleAvatar(
                              radius: 10,
                              backgroundColor: Colors.blue,
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(4),
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.black),
                              shape: BoxShape.circle,
                            ),
                            child: const CircleAvatar(
                              radius: 10,
                              backgroundColor: Colors.red,
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(4),
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.black),
                              shape: BoxShape.circle,
                            ),
                            child: const CircleAvatar(
                              radius: 10,
                              backgroundColor: Colors.limeAccent,
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(4),
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.black),
                              shape: BoxShape.circle,
                            ),
                            child: const CircleAvatar(
                              radius: 10,
                              backgroundColor: Colors.lightGreen,
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(4),
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.black),
                              shape: BoxShape.circle,
                            ),
                            child: const CircleAvatar(
                              radius: 10,
                              backgroundColor: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 8),
                      child: Center(
                        child: Text(
                          'Sizes',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: 30,
                            width: 45,
                            padding: const EdgeInsets.all(4),
                            decoration: BoxDecoration(
                              color: Colors.blueGrey,
                              border: Border.all(color: Colors.transparent),
                              shape: BoxShape.rectangle,
                            ),
                            child: const Center(
                                child: Text(
                              'M',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            )),
                          ),
                          Container(
                            height: 30,
                            width: 45,
                            padding: const EdgeInsets.all(4),
                            decoration: BoxDecoration(
                              color: Colors.blueGrey,
                              border: Border.all(color: Colors.transparent),
                              shape: BoxShape.rectangle,
                            ),
                            child: const Center(
                                child: Text(
                              'L',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            )),
                          ),
                          Container(
                            height: 30,
                            width: 45,
                            padding: const EdgeInsets.all(4),
                            decoration: BoxDecoration(
                              color: Colors.blueGrey,
                              border: Border.all(color: Colors.transparent),
                              shape: BoxShape.rectangle,
                            ),
                            child: const Center(
                                child: Text(
                              'XL',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            )),
                          ),
                          Container(
                            height: 30,
                            width: 45,
                            padding: const EdgeInsets.all(4),
                            decoration: BoxDecoration(
                              color: Colors.blueGrey,
                              border: Border.all(color: Colors.transparent),
                              shape: BoxShape.rectangle,
                            ),
                            child: const Center(
                                child: Text(
                              '2XL',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            )),
                          ),
                          Container(
                            height: 30,
                            width: 45,
                            padding: const EdgeInsets.all(4),
                            decoration: BoxDecoration(
                              color: Colors.blueGrey,
                              border: Border.all(color: Colors.transparent),
                              shape: BoxShape.rectangle,
                            ),
                            child: const Center(
                              child: Text(
                                '3XL',
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 14),
                      child: Center(
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Payment(),
                              ),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.blue,
                            shape: const StadiumBorder(),
                          ),
                          child: const Text('  Add to cart  '),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
