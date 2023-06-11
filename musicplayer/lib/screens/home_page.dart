

import 'package:flutter/material.dart';
import 'package:musicplayer/global.dart';
import 'package:musicplayer/screens/player_page.dart';

class MusicHomePage extends StatefulWidget {
  const MusicHomePage({Key? key}) : super(key: key);

  @override
  State<MusicHomePage> createState() => _MusicHomePageState();
}

class _MusicHomePageState extends State<MusicHomePage> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.black,
        iconTheme: const IconThemeData(color: GlobalColor.color1),
        title: const Text(
          "Music Player",
          style: TextStyle(fontSize: 20, color: GlobalColor.color1
              ),
        ),
      ),
      body: ListView.builder(
        itemCount: GlobalPlayer.songs.length,
        itemBuilder: (context, i) => Container(
          margin: const EdgeInsets.symmetric(horizontal: 5),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            elevation: 5,
            child: ListTile(
              onTap: () {
                setState(() {
                  GlobalPlayer.index = i;
                  GlobalPlayer.playSong = GlobalPlayer.songs[i];
                });
                Navigator.of(context).push(PageRouteBuilder(
                    pageBuilder: (_, __, ___) => const PlayerPage()));
              },
              leading: Image.asset(
                "${GlobalPlayer.songs[i]["image"]}",
                height: 45,
                width: 45,
                fit: BoxFit.fill,
              ),
              title: SizedBox(
                height: 20,
                child: Text(
                  GlobalPlayer.songs[i]["name"].toString().split(' - ')[0],
                  style: const TextStyle(
                      color: GlobalColor.color2,
                      fontWeight: FontWeight.w500,
                      fontSize: 17.5),
                ),
              ),
              subtitle: SizedBox(
                height: 20,
                child: Text(
                  GlobalPlayer.songs[i]["name"].toString().split(' - ')[1],
                  style: const TextStyle(
                      color: GlobalColor.color3,
                      fontSize: 14,
                      fontWeight: FontWeight.w400),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
