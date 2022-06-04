import 'package:flutter/material.dart';
import 'package:shoping/pages/homepg.dart';
import 'pymtsplshscreen.dart';

class Payment extends StatefulWidget {
  const Payment({Key? key}) : super(key: key);

  @override
  _PaymentState createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  var _ischeck1 = false;

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
                builder: (context) =>  HomePg(),
              ),
            );
          },
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.payment,
              color: Colors.green,
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
            child: Column(
              children: [
                ListView(
                  clipBehavior: Clip.antiAlias,
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  children: [
                    ListTile(
                      leading: Icon(
                        Icons.account_balance_wallet,
                        color: Colors.black,
                      ),
                      title: Text(
                        'Debit Card',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 20),
                      ),
                      trailing: Icon(
                        Icons.arrow_drop_down,
                        color: Colors.black,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10, left: 10),
                      child: TextFormField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            prefixIcon: Icon(Icons.credit_card_outlined),
                            hintText: "Card Number"),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10, left: 10),
                      child: TextFormField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            prefixIcon: Icon(Icons.date_range),
                            hintText: "Expiry Date"),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10, left: 10),
                      child: TextFormField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            prefixIcon: Icon(Icons.lock),
                            hintText: "CVV"),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10, left: 10),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Checkbox(
                            checkColor: Colors.black,
                            value: _ischeck1,
                            onChanged: (value) {
                              setState(() {
                                _ischeck1 = value!;
                              });
                            },
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 12),
                            child: Text(
                              'Save To My Card',
                              style: TextStyle(fontSize: 20, color: Colors.grey),
                            ),
                          )
                        ],
                      ),
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.account_balance_wallet,
                        color: Colors.black,
                      ),
                      title: Text(
                        'Credit Card',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 20),
                      ),
                      trailing: Icon(
                        Icons.arrow_drop_down,
                        color: Colors.black,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30, left: 20),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.white,
                            maxRadius: 30,
                            child: Image.asset(
                              'assets/ctgryimg/gpy.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                          CircleAvatar(
                            backgroundColor: Colors.white,
                            maxRadius: 30,
                            child: Image.asset(
                              'assets/ctgryimg/pytm.png',
                              fit: BoxFit.fill,
                            ),
                          ),
                          CircleAvatar(
                            backgroundColor: Colors.white,
                            maxRadius: 30,
                            child: Image.asset('assets/ctgryimg/upi.png'),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 180),
                      child: ElevatedButton.icon(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => PymntSplsh(),
                            ),
                          );
                        },
                        icon: Icon(Icons.assignment_turned_in),
                        label: Text('CONFIRM'),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
