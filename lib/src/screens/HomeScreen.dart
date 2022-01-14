import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Background(),
          HomeBody(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.pink[200],
        backgroundColor: const Color.fromRGBO(55, 57, 84, 1),
        unselectedItemColor: const Color.fromRGBO(116, 117, 152, 1),
        currentIndex: 0,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today_rounded),
            label: "Calendar",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.stacked_bar_chart_outlined),
            label: "Stadistics",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: "Users",
          ),
        ],
      ),
    );
  }
}

class HomeBody extends StatelessWidget {
  const HomeBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: const [
          PageTitle(),
          CardWidget(),
        ],
      ),
    );
  }
}

class CardWidget extends StatelessWidget {
  const CardWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Table(
      children: [
        TableRow(
          children: [
            ItemCard(
              title: "Windows",
              icon: Icons.widgets_rounded,
              color: Colors.blue,
              left: 15,
              right: 5,
            ),
            ItemCard(
              title: "Transport",
              icon: Icons.directions_bus,
              color: Colors.deepPurple,
              left: 5,
              right: 15,
            ),
          ],
        ),
        TableRow(
          children: [
            ItemCard(
              title: "Shopping",
              icon: Icons.shopping_bag_sharp,
              color: Colors.pink,
              left: 15,
              right: 5,
            ),
            ItemCard(
              title: "Bills",
              icon: Icons.description_sharp,
              color: Colors.orangeAccent,
              left: 5,
              right: 15,
            ),
          ],
        ),
        TableRow(
          children: [
            ItemCard(
              title: "Entertenaiment",
              icon: Icons.movie_filter,
              color: Colors.blueAccent,
              left: 15,
              right: 5,
            ),
            ItemCard(
              title: "Grocery",
              icon: Icons.food_bank_sharp,
              color: Colors.green,
              left: 5,
              right: 15,
            ),
          ],
        ),
      ],
    );
  }
}

class ItemCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final Color color;
  double right = 0.0;
  double left = 0.0;
  ItemCard({
    Key? key,
    required this.title,
    required this.icon,
    required this.color,
    required this.right,
    required this.left,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      margin: EdgeInsets.only(right: right, left: left, top: 5, bottom: 5),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
          child: Container(
            decoration: BoxDecoration(
              color: const Color.fromRGBO(62, 66, 107, 0.7),
              borderRadius: BorderRadius.circular(10),
            ),
            margin:
                EdgeInsets.only(right: right, left: left, top: 5, bottom: 5),
            height: 180,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundColor: color,
                  child: Icon(
                    icon,
                    size: 35,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  title,
                  style: TextStyle(
                    color: color,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class PageTitle extends StatelessWidget {
  const PageTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Container(
        margin: const EdgeInsets.only(left: 20, right: 120, top: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'Classify Transaction',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Classify this transaction into the particular category',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Background extends StatelessWidget {
  final boxDecoration = const BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      stops: [0.2, 0.8],
      colors: [
        Color(0xff2E305F),
        Color(0xff202333),
      ],
    ),
  );
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: boxDecoration,
        ),
        const Positioned(
          top: -100,
          left: -30,
          child: _PinkBox(),
        ),
      ],
    );
  }
}

class _PinkBox extends StatelessWidget {
  const _PinkBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: -pi / 5,
      child: Container(
        width: 360,
        height: 360,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(80),
          gradient: const LinearGradient(
            colors: [
              Color.fromRGBO(236, 98, 188, 1),
              Color.fromRGBO(241, 142, 172, 1),
            ],
          ),
        ),
      ),
    );
  }
}
