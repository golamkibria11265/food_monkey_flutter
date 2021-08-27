import 'package:flutter/material.dart';
import 'package:food_monkey/customWidget/orangeRepeatGrid.dart';
import 'package:food_monkey/pages/findFood.dart';
import 'package:food_monkey/pages/logInPage.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Signuppage extends StatefulWidget {
  const Signuppage({Key? key}) : super(key: key);

  @override
  _SignuppageState createState() => _SignuppageState();
}

class _SignuppageState extends State<Signuppage> {
  final _auth = FirebaseAuth.instance;
  late String emailReg;
  late String passwordReg;
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
                "Sign Up",
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
                "add your delails to Sign Up",
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
                      emailReg = value;
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
                    cursorColor: Colors.black,
                    decoration: new InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.only(
                            left: 15, bottom: 11, top: 15, right: 15),
                        hintText: "Password"),
                    onChanged: (value) {
                      passwordReg = value;
                    },
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                child: OrangeRepeatGrid("Sign Up"),
                onTap: () async {
                  try {
                    final _newUser = await _auth.createUserWithEmailAndPassword(
                        email: emailReg, password: passwordReg);
                    // ignore: unnecessary_null_comparison
                    if (_newUser != null) {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Findfood()));
                    }
                  } catch (error) {
                    print(error);
                  }
                  // print(_newUser);
                },
              ),
              SizedBox(
                height: 350,
              ),
              Text(
                "Already have an account?",
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
                  "Login",
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
                      MaterialPageRoute(builder: (context) => Loginpage()));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
