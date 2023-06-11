

import 'dart:async';

import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:musicplayer/global.dart';

class PlayerPage extends StatefulWidget {
  const PlayerPage({Key? key}) : super(key: key);

  @override
  State<PlayerPage> createState() => _PlayerPageState();
}

class _PlayerPageState extends State<PlayerPage> {
  initAudio() async {
    await GlobalPlayer.playSong['player'].open(
      Audio(GlobalPlayer.playSong['path']),
      autoStart: false,
    );

    setState(() {
      GlobalPlayer.playSong['totalDuration'] =
          GlobalPlayer.playSong['player'].current.value!.audio.duration;
    });

    Timer(
      const Duration(seconds: 1),
      () async {
        await GlobalPlayer.playSong['player'].play();
        setState(() {
          isPlay = true;
          isloading = false;
        });
      },
    );
  }

  @override
  void initState() {
    super.initState();
    initAudio();
  }

  @override
  void dispose() async {
    super.dispose();
    await GlobalPlayer.playSong["player"].pause();
  }

  bool isPlay = false;
  bool isloading = true;

  @override
  Widget build(BuildContext context) {
    if (isloading) {
      return Container(
        color: GlobalColor.color4,
        child: const Center(child: CircularProgressIndicator(color: GlobalColor.color1,)),
      );
    } else {
      return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          elevation: 0,
          backgroundColor: Colors.black,
          title: const Text(
            "Now Playing",
            style: TextStyle(fontSize: 20, color: GlobalColor.color1
                // fontWeight: FontWeight.bold,
                ),
          ),
        ),
        body: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Text(
                GlobalPlayer.playSong["name"].toString().split(' - ')[0],
                textAlign: TextAlign.center,
                style: const TextStyle(
                    color: GlobalColor.color2,
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 15),
              Text(
                GlobalPlayer.playSong["name"].toString().split(' - ')[1],
                textAlign: TextAlign.center,
                style: const TextStyle(
                    color: GlobalColor.color2,
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 15),
              const Divider(color: GlobalColor.color2),
              const Divider(color: GlobalColor.color3),
              const Spacer(),
              Container(
                height: 250,
                width: 250,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("${GlobalPlayer.playSong["image"]}"),
                  ),
                ),
              ),
              // const SizedBox(height: 40),
              const Spacer(),
              StreamBuilder(
                stream: GlobalPlayer.playSong['player'].currentPosition,
                builder: (context, AsyncSnapshot<Duration> snapshot) {
                  Duration? currentPosition = const Duration(seconds: 0);
                  currentPosition = snapshot.data;

                  return Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "$currentPosition".split(".")[0],
                            style:
                                const TextStyle(color: GlobalColor.color3, fontSize: 16),
                          ),
                          Text(
                            "${GlobalPlayer.playSong['totalDuration']}".split(".")[0],
                            style:
                                const TextStyle(color: GlobalColor.color3, fontSize: 16),
                          ),
                        ],
                      ),
                      Slider(
                        min: 0,
                        activeColor: GlobalColor.color1,
                        inactiveColor: GlobalColor.color2,
                        max: GlobalPlayer.playSong['totalDuration'].inSeconds
                            .toDouble(),
                        value: (currentPosition != null)
                            ? currentPosition.inSeconds.toDouble()
                            : 0,
                        onChanged: (val) async {
                          await GlobalPlayer.playSong['player']
                              .seek(Duration(seconds: val.toInt()));
                        },
                      ),
                    ],
                  );
                },
              ),
              // SizedBox(height: 30)
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    iconSize: 25,
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: const Icon(
                      Icons.arrow_back,
                      color: GlobalColor.color3,
                    ),
                  ),
                  IconButton(
                    iconSize: 35,
                    onPressed: () async {
                      if (GlobalPlayer.index > 0) {
                        await GlobalPlayer.playSong['player']
                            .seek(const Duration(seconds: 0));
                        setState(() {
                          GlobalPlayer.playSong["player"].pause();
                          GlobalPlayer.index--;
                          GlobalPlayer.playSong = GlobalPlayer.songs[GlobalPlayer.index];
                        });
                        Navigator.of(context).pushReplacement(PageRouteBuilder(
                            pageBuilder: (_, __, ___) => const PlayerPage()));
                      }
                    },
                    icon: const Icon(Icons.skip_previous, color: GlobalColor.color2),
                  ),
                  IconButton(
                    // padding: EdgeInsets.all(10),
                    iconSize: 55,
                    icon: Icon(
                      (isPlay) ? Icons.pause : Icons.play_arrow,
                      color: GlobalColor.color1,
                    ),
                    onPressed: () async {
                      setState(() {
                        isPlay = (isPlay) ? false : true;
                      });
                      (isPlay)
                          ? await GlobalPlayer.playSong['player'].play()
                          : await GlobalPlayer.playSong['player'].pause();
                    },
                  ),
                  IconButton(
                    iconSize: 35,
                    onPressed: () async {
                      if (GlobalPlayer.index < GlobalPlayer.songs.length - 1) {
                        await GlobalPlayer.playSong['player']
                            .seek(const Duration(seconds: 0));
                        setState(() {
                          GlobalPlayer.playSong["player"].pause();
                          GlobalPlayer.index++;
                          GlobalPlayer.playSong = GlobalPlayer.songs[GlobalPlayer.index];
                        });
                        Navigator.of(context).pushReplacement(PageRouteBuilder(
                            pageBuilder: (_, __, ___) => const PlayerPage()));
                      }
                    },
                    icon: const Icon(Icons.skip_next, color: GlobalColor.color2),
                  ),
                  IconButton(
                    iconSize: 25,
                    icon: const Icon(Icons.stop, color: GlobalColor.color3),
                    onPressed: () async {
                      setState(() {
                        isPlay = false;
                      });
                      await GlobalPlayer.playSong['player'].stop();
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      );
    }
  }
}
