import 'package:flutter/material.dart';
import 'package:musicplayer/screens/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Music Player',
      theme: ThemeData(
        primaryColor: Colors.black,
        primarySwatch: Colors.orange
      ),
      home: const MusicHomePage(),
    );
  }
}