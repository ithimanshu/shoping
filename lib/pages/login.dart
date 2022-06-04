import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:shoping/pages/homepg.dart';
import 'registerpg.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

String p = r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
RegExp regExp =  RegExp(p);

class _LoginPageState extends State<LoginPage> {

  TextEditingController eml = TextEditingController();
  TextEditingController pwd = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(bottom: 30),
                height: 350,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(300),
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
                    'Login',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 10),
                child: TextFormField(
                  validator: (value){
                    if(value == ""){
                      return 'Please enter the email';
                    }else if(regExp.hasMatch(value!)){
                      return 'Enter Your Valid Email';
                    }
                    return "";
                  },
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
                  validator: (value) {
                    if(value == ""){
                      return 'Please Enter Your Password';
                    }else if(value!.length <= 8){
                      return 'Please Enter * digit Password';
                    }
                    return '';
                  },
                  controller: pwd,
                  decoration: const InputDecoration(
                      border: InputBorder.none,
                      prefixIcon: Icon(Icons.vpn_key),
                      hintText: "Password"),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 7, left: 270),
                child: Text(
                  'Forget Password?',
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blueGrey,
                    ),
                    onPressed: () {
                      // SignIn();

                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HomePg(),
                        ),
                      );
                    },
                    child: const Text(
                      'Login',
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    ),
                  ),
                ),
              ),
              Center(
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const RegisterPg(),
                      ),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 35,
                    ),
                    child: RichText(
                      text: const TextSpan(children: [
                        TextSpan(
                          text: "Don't have an account ? ",
                          style: TextStyle(color: Colors.black),
                        ),
                        TextSpan(
                          text: "Register",
                          style: TextStyle(color: Colors.deepOrange),
                        ),
                      ]),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 30),
                      height: 150,
                      width: 150,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(300),
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

  SignIn() async {
    try {
      await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: eml.text, password: pwd.text);
      await Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => HomePg(),
        ),
      );
    } catch (e) {
      print(e);
    }
  }
}
