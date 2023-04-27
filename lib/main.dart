import 'package:flutter/material.dart';
import 'package:mini_project_mad/screens/meme.dart';
import 'package:mini_project_mad/profile.dart';
import 'package:mini_project_mad/home.dart';

void main() {

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes:
      {
        '/profile': (context) => ProfileCard(),
        '/memes': (context) => Meme(),
        '/home': (context) => home(),
      },
      home: home(),
      debugShowCheckedModeBanner: false,
    );
  }
}