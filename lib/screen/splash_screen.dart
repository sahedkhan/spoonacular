import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spoonacular/screen/dashboard_screen.dart';
import 'package:spoonacular/screen/home_page.dart';

import '../helper/images.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Navigate to the next screen after some time
    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => BottomNavBar()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor:  Colors.red,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // app logo here--->
            Image.asset(
              Images.LOGO,
              height: 120,
            ),
            SizedBox(height: 10),
            // app name here--->
            Text(
              "Spoonacular",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w600,
                color: Theme.of(context).secondaryHeaderColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
