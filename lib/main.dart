import 'package:chapter8/src/screens/HomeScreen.dart';
import 'package:chapter8/src/screens/basic_design.dart';
import 'package:chapter8/src/screens/scroll_menu.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      initialRoute: 'home_screen',
      routes: {
        'home_screen': (_) => const HomeScreen(),
        'basic_design': (_) => const BasicDesignScreen(),
        'scroll_menu': (_) => const ScrollMenu(),
      },
    );
  }
}
