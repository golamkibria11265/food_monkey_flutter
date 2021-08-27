import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:food_monkey/customWidget/orangeRepeatGrid.dart';
import 'package:food_monkey/pages/findFood.dart';
import 'package:food_monkey/pages/signUpPage.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({Key? key}) : super(key: key);

  @override
  _LoginpageState createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  bool showSpinner = false;
  final _auth = FirebaseAuth.instance;
  late String emaillog;
  late String passwordlog;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Container(
        color: Colors.white,
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 60,
              ),
              Text(
                "Login",
                style: TextStyle(
                  fontFamily: 'Cabin',
                  fontSize: 30,
                  color: Colors.black,
                  fontWeight: FontWeight.normal,
                  decoration: TextDecoration.none,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "add your delails to login",
                style: TextStyle(
                  fontFamily: 'Cabin',
                  fontSize: 14,
                  color: Colors.black,
                  fontWeight: FontWeight.normal,
                  decoration: TextDecoration.none,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Material(
                color: Colors.red,
                borderRadius: BorderRadius.all(Radius.circular(30)),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    border: Border.all(
                      color: Colors.transparent,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                  ),
                  height: height / 14.337,
                  width: width / 1.279,
                  child: TextField(
                    cursorColor: Colors.black,
                    decoration: new InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.only(
                            left: 15, bottom: 11, top: 15, right: 15),
                        hintText: "Email"),
                    onChanged: (value) {
                      emaillog = value;
                    },
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Material(
                color: Colors.red,
                borderRadius: BorderRadius.all(Radius.circular(30)),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    border: Border.all(
                      color: Colors.transparent,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                  ),
                  height: height / 14.337,
                  width: width / 1.279,
                  child: TextField(
                    obscureText: true,
                    cursorColor: Colors.black,
                    decoration: new InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.only(
                            left: 15, bottom: 11, top: 15, right: 15),
                        hintText: "Password"),
                    onChanged: (value) {
                      passwordlog = value;
                    },
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                child: OrangeRepeatGrid("Login"),
                onTap: () async {
                  setState(() {
                    showSpinner = true;
                  });
                  try {
                    final user = await _auth.signInWithEmailAndPassword(
                        email: emaillog, password: passwordlog);
                    // ignore: unnecessary_null_comparison
                    if (user != null) {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Findfood()));
                    }
                    setState(() {
                      showSpinner = false;
                    });
                  } catch (e) {
                    print("Invalid ID and Passw");
                  }
                },
              ),
              SizedBox(
                height: 350,
              ),
              Text(
                "Don't have an account?",
                style: TextStyle(
                  fontFamily: 'Cabin',
                  fontSize: 14,
                  color: Colors.black,
                  fontWeight: FontWeight.normal,
                  decoration: TextDecoration.none,
                ),
              ),
              GestureDetector(
                child: Text(
                  "Sign Up",
                  style: TextStyle(
                    fontFamily: 'Cabin',
                    fontSize: 14,
                    color: Colors.orange[900],
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.none,
                  ),
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Signuppage()));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
