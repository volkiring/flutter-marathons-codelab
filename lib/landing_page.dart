import 'package:flutter/material.dart';

import 'data.dart';
import 'details_page.dart';
import 'main.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: primaryGray,
        iconTheme: IconThemeData(color: mainGreen),
        centerTitle: true,
        title: Icon(Icons.directions_run, color: mainGreen),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications_none, color: Colors.grey),
            onPressed: () {},
          ),
        ],
      ),
      drawer: Drawer(
        child: Container(
          color: mainGreen,
          alignment: Alignment.bottomLeft,
          padding: EdgeInsets.all(20),
          child: Icon(Icons.directions_run, size: 80, color: Colors.black),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [primaryGray, secondaryGray],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Header(),
            Expanded(child: MarathonList()),
            BottomBar(),
          ],
        ),
      ),
    );
  }
}

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 30, left: 30, right: 30, bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Где побежим',
            style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
          ),
          Text(
            'в этом году?',
            style: TextStyle(color: mainGreen, fontSize: 30, fontWeight: FontWeight.bold),
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: lightGray,
              borderRadius: BorderRadius.circular(50),
            ),
            child: Row(
              children: [
                Icon(Icons.search, color: Colors.grey),
                SizedBox(width: 10),
                Text('Поиск', style: TextStyle(color: Colors.grey)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class MarathonList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.only(left: 10),
      scrollDirection: Axis.horizontal,
      itemCount: marathons.length,
      itemBuilder: (context, index) {
        MarathonModel marathon = marathons[index];

        return GestureDetector(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => DetailsPage(marathon)),
            );
          },
          child: Container(
            width: 180,
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(25),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              image: DecorationImage(
                image: NetworkImage(marathon.imgPath),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(Colors.black38, BlendMode.darken),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  marathon.name,
                  style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                Text(marathon.location, style: TextStyle(color: mainGreen)),
              ],
            ),
          ),
        );
      },
    );
  }
}

class BottomBar extends StatefulWidget {
  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: bottomBarItems.map((item) {
          return IconButton(
            icon: Icon(item.icon, color: item.isSelected ? mainGreen : Colors.grey),
            onPressed: () {
              setState(() {
                for (var other in bottomBarItems) {
                  other.isSelected = other == item;
                }
              });
            },
          );
        }).toList(),
      ),
    );
  }
}
