import 'package:flutter/material.dart';

class BasicDesignScreen extends StatelessWidget {
  const BasicDesignScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const [
          Image(
            image: AssetImage('assets/landscape.jpeg'),
          ),
          Title(),
          ButtonMenu(),
          DescriptionM()
        ],
      ),
    );
  }
}

class DescriptionM extends StatelessWidget {
  const DescriptionM({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        'Cupidatat mollit incididunt magna nisi eu excepteur Lorem magna elit incididunt labore est exercitation in. Do excepteur non nulla consectetur laborum aliqua anim eu Lorem duis dolor qui. Fugiat quis esse cillum consequat. Non incididunt sunt ea mollit amet proident reprehenderit.Nisi non et deserunt consectetur. Officia fugiat nostrud duis qui qui. Minim ut qui incididunt quis quis cupidatat ipsum laboris sint eu incididunt aliqua.',
        textAlign: TextAlign.justify,
      ),
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
    );
  }
}

class ButtonMenu extends StatelessWidget {
  const ButtonMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const [
          ButtonM(title: 'CALL', icon: Icons.call),
          ButtonM(title: 'ROUTE', icon: Icons.map_sharp),
          ButtonM(title: 'SHARE', icon: Icons.share),
        ],
      ),
    );
  }
}

class ButtonM extends StatelessWidget {
  final String title;
  final IconData icon;
  const ButtonM({
    Key? key,
    required this.title,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          color: Colors.blue,
        ),
        Text(
          title,
          style: const TextStyle(color: Colors.blue),
        )
      ],
    );
  }
}

class Title extends StatelessWidget {
  const Title({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 30, horizontal: 25),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Oeschinen Lake Campground',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                'Kandersteg, Switzerland',
                style: TextStyle(color: Colors.black45),
              ),
            ],
          ),
          Expanded(
            child: Container(),
          ),
          const Icon(
            Icons.star,
            color: Colors.red,
          ),
          const Text('41'),
        ],
      ),
    );
  }
}
