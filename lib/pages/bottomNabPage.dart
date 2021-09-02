import 'package:flutter/material.dart';
import 'package:food_monkey/dashboard/dashboardPages.dart';
import 'package:food_monkey/menu/menuPages.dart';
import 'package:food_monkey/offer/offerPages.dart';
import 'package:food_monkey/profile/profilePages.dart';

class BottomNavPage extends StatefulWidget {
  const BottomNavPage({Key? key}) : super(key: key);

  @override
  _BottomNavPageState createState() => _BottomNavPageState();
}

class _BottomNavPageState extends State<BottomNavPage> {
  var _currentindex = 0;
  var index;
  final pages = [
    Dashboard(),
    MenuPage(),
    OfferPage(),
    ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.orange[900],
        onPressed: () {
          setState(() {});
        },
        child: Icon(Icons.support),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.orange[900],
        shape: CircularNotchedRectangle(),
        child: Container(
          height: 63,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  child: Icon(Icons.home, size: 40, color: Colors.white),
                  onTap: () {
                    setState(() {
                      _currentindex = 0;
                    });
                  },
                ),
                InkWell(
                  child: Icon(Icons.restaurant_menu,
                      size: 40, color: Colors.white),
                  onTap: () {
                    setState(() {
                      _currentindex = 1;
                    });
                  },
                ),
                InkWell(
                  child: Icon(Icons.local_offer, size: 40, color: Colors.white),
                  onTap: () {
                    setState(() {
                      _currentindex = 2;
                    });
                  },
                ),
                InkWell(
                  child: Icon(Icons.person, size: 40, color: Colors.white),
                  onTap: () {
                    setState(() {
                      _currentindex = 3;
                    });
                  },
                ),
              ],
            ),
          ),
        ),
      ),
      body: pages[_currentindex],
    );
  }
}
