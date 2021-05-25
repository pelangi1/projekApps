import 'dart:async';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:splashscreen/home.dart';

class Splashscreen extends StatefulWidget {
  _Splashscreen createState() => _Splashscreen();
}

class _Splashscreen extends State<Splashscreen> {
  void initState() {
    super.initState();
    splashscreenStart();
  }

  splashscreenStart() async {
    var duration = const Duration(seconds: 3);
    return Timer(duration, () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Home()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.my_library_books,
              size: 100.0,
              color: Colors.white,
            ),
            SizedBox(
              height: 22.0,
            ),
            Text(
              "ITC",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 30.0,
              ),
            ),
            Text(
              "Version 0.1",
              style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.normal,
                fontSize: 9.0,
              ),
            )
          ],
        ),
      ),
    );
  }
}
