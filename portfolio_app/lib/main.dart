import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Home(), debugShowCheckedModeBanner: false));
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(Object context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset('image/portflo.jpg', fit: BoxFit.cover),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 60.0, left: 40.0),
            child: Column(
              children: [
                Row(
                  children: <Widget>[
                    CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage("image/Profile.jpg"),
                    ),
                    SizedBox(width: 40),
                    Column(
                      children: [
                        Text(
                          'Jubayer Ahmed Sojib',
                          style: TextStyle(fontSize: 25, color: Colors.white),
                        ),
                        Text(
                          'Portfolio',
                          style: TextStyle(fontSize: 15, color: Colors.white),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.school_rounded,
                            size: 40,
                            color: Colors.white,
                          ),
                          SizedBox(width: 20),
                          Text(
                            'BSC in CSE',
                            style: TextStyle(fontSize: 15, color: Colors.white),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Row(
                        children: [
                          Icon(
                            Icons.business_center,
                            size: 40,
                            color: Colors.white,
                          ),
                          SizedBox(width: 20),
                          Text(
                            'Portfolio Project',
                            style: TextStyle(fontSize: 15, color: Colors.white),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Row(
                        children: [
                          Icon(
                            Icons.location_on_outlined,
                            size: 40,
                            color: Colors.white,
                          ),
                          SizedBox(width: 20),
                          Text(
                            'Dr. Muhammad Shahidullah Hall',
                            style: TextStyle(fontSize: 15, color: Colors.white),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Row(
                        children: [
                          Icon(
                            Icons.email_outlined,
                            size: 40,
                            color: Colors.white,
                          ),
                          SizedBox(width: 20),
                          Text(
                            'jubayerahmedsojib2022@gmil.com',
                            style: TextStyle(fontSize: 15, color: Colors.white),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Row(
                        children: [
                          Icon(Icons.phone, size: 40, color: Colors.white),
                          SizedBox(width: 20),
                          Text(
                            '01401550813',
                            style: TextStyle(fontSize: 15, color: Colors.white),
                          ),
                        ],
                      ),
                      // SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Text(
                          "I love building beautiful, functional apps using Flutter.I am constantly learning new things to improve my craft.Besides app development, I'm also active in competitive programming.",
                          style: TextStyle(fontSize: 15, color: Colors.white),
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "Created by Sojib",
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
