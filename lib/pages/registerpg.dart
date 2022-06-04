import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'login.dart';

class RegisterPg extends StatefulWidget {
  const RegisterPg({Key? key}) : super(key: key);

  @override
  _RegisterPgState createState() => _RegisterPgState();
}

class _RegisterPgState extends State<RegisterPg> {

  TextEditingController eml = TextEditingController();
  TextEditingController pwd = TextEditingController();
  TextEditingController fullnm = TextEditingController();
  TextEditingController phone = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                //margin: EdgeInsets.only(bottom: 30),
                height: 200,
                width: 420,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(100),
                    bottomRight: Radius.circular(100),
                  ),
                  color: Colors.blueGrey,
                ),
                child: Image.asset(
                  'assets/img/logo1.png',
                  fit: BoxFit.cover,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 10),
                child: Center(
                  child: Text(
                    'Registration',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 10),
                child: TextFormField(
                  controller: fullnm,
                  decoration: const InputDecoration(
                      border: InputBorder.none,
                      prefixIcon: Icon(Icons.person),
                      hintText: "Fullname"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 10),
                child: TextFormField(
                  controller: eml,
                  decoration: const InputDecoration(
                      border: InputBorder.none,
                      prefixIcon: Icon(Icons.email),
                      hintText: "Email"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 10),
                child: TextFormField(
                  controller: phone,
                  decoration: const InputDecoration(
                      border: InputBorder.none,
                      prefixIcon: Icon(Icons.call),
                      hintText: "Phone"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 10),
                child: TextFormField(
                  controller: pwd,
                  decoration: const InputDecoration(
                      border: InputBorder.none,
                      prefixIcon: Icon(Icons.vpn_key),
                      hintText: "Password"),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blueGrey,
                    ),
                    onPressed: () {
                      SignUp();
                    },
                    child: const Text(
                      'Register',
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    ),
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 60,),
                  child: InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: RichText(
                      text: const TextSpan(children: [
                        TextSpan(
                          text: "Already a member ? ",
                          style: TextStyle(color: Colors.black),
                        ),
                        TextSpan(
                          text: "  Login",
                          style: TextStyle(color: Colors.deepOrange),
                        ),
                      ]),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 62),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                     // margin: EdgeInsets.only(left: 30),
                      height: 70,
                      width: 200,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(190),
                          topRight: Radius.circular(190),
                        ),
                        color: Colors.blueGrey,
                      ),
                      //child:
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  SignUp() async {
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: eml.text, password: pwd.text);
      await Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => LoginPage(),
        ),
      );
    } catch (e) {
      print(e);
    }
  }
}
