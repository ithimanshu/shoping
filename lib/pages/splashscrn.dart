import 'dart:async';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'login.dart';

class Splashscrn extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return CreateAppState();
  }
}

class CreateAppState extends State {

  @override
  void initState() {
    super.initState();
    Timer(const Duration(milliseconds: 4500), () {
      Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginPage()));
    },);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Lottie.asset('assets/lotti/splsscrn.json'),
      ),
    );
  }
}
