import 'dart:async';

import 'package:flutter/material.dart';
import 'package:musicplayer/screens/home_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Timer(
        const Duration(seconds: 2),
        () => Navigator.of(context).pushAndRemoveUntil(
            PageRouteBuilder(
                pageBuilder: (_, __, ___) => const MusicHomePage()),
            (route) => false));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          'assets/logo.png',
          height: 200,
          width: 200,
        ),
      ),
    );
  }
}
