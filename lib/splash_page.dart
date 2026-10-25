import 'package:flutter/material.dart';

import 'landing_page.dart';
import 'main.dart';

class SplashPage extends StatefulWidget {
  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 2), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => LandingPage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(color: mainGreen),
        Align(
          alignment: Alignment.center,
          child: Icon(Icons.directions_run, color: Colors.black, size: 80),
        ),
        Align(
          alignment: Alignment.center,
          child: SizedBox(
            width: 160,
            height: 160,
            child: CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Colors.black26),
              strokeWidth: 10,
            ),
          ),
        ),
      ],
    );
  }
}
