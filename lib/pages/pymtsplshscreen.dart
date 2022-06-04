import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'homepg.dart';

class PymntSplsh extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return CreateAppState();
  }
}

class CreateAppState extends State {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
      Duration(milliseconds: 2800),
      () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => HomePg()));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Lottie.asset('assets/lotti/pymntssc.json'),
      ),
    );
  }
}
