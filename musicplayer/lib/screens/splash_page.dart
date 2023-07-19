import 'dart:async';

import 'package:flutter/material.dart';
import 'package:musicplayer/global.dart';
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
          pageBuilder: (_, __, ___) => const MusicHomePage(),
        ),
        (route) => false,
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.1,
          ),
          Image.asset(
            'assets/logo.png',
            height: 250,
            width: 250,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 3.5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                "Powered by :",
                style: TextStyle(
                  color: GlobalColor.color2,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(
                width: 6,
              ),
              Image.asset(
                'assets/company.png',
                height: 30,
                width: 30,
              ),
            ],
          )
        ],
      ),
    );
  }
}
