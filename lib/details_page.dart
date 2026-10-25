import 'package:flutter/material.dart';

import 'data.dart';
import 'main.dart';

class DetailsPage extends StatelessWidget {
  final MarathonModel marathon;

  DetailsPage(this.marathon);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.network(marathon.imgPath, fit: BoxFit.cover),
          ),
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.transparent, Colors.black87],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  marathon.name,
                  style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
                ),
                Text(marathon.location, style: TextStyle(color: mainGreen)),
                SizedBox(height: 20),
                Text(marathon.description, style: TextStyle(color: Colors.white70)),
                SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Text('Отзывы', style: TextStyle(color: Colors.white)),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: mainGreen,
                        foregroundColor: Colors.black,
                      ),
                      child: Text('Зарегистрироваться', style: TextStyle(fontWeight: FontWeight.bold)),
                    ),
                  ],
                ),
              ],
            ),
          ),
          AppBar(
            elevation: 0,
            backgroundColor: Colors.transparent,
            iconTheme: IconThemeData(color: mainGreen),
            centerTitle: true,
            title: Icon(Icons.directions_run, color: mainGreen),
            actions: [
              IconButton(
                icon: Icon(Icons.favorite, color: mainGreen),
                onPressed: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
