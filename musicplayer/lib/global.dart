import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/animation.dart';

class GlobalPlayer {
  static Map playSong = {};
  static int index = 0;
  static List songs = [
    {
      'name': 'Shiv Dhun Mp3 - Jainen',
      'path': 'assets/songs/1.mp3',
      'player': AssetsAudioPlayer(),
      'totalDuration': Duration.zero,
      "image":"assets/base.gif",
    },
    {
      'name':
          'Kaal Bhairav Ashtakam (The Beginning) Mp3 - Sachet Tandon, Parampara Tandon',
      'path': 'assets/songs/2.mp3',
      'player': AssetsAudioPlayer(),
      'totalDuration': Duration.zero,
      "image":"assets/base.gif",
    },
    {
      'name': 'Bolo Shiv Mp3 - Pardhaan',
      'path': 'assets/songs/3.mp3',
      'player': AssetsAudioPlayer(),
      'totalDuration': Duration.zero,
      "image":"assets/base.gif",
    },
    {
      'name': 'Shiva Tandava Stotram Mp3 - Female Version',
      'path': 'assets/songs/4.mp3',
      'player': AssetsAudioPlayer(),
      'totalDuration': Duration.zero,
      "image":"assets/base.gif",
    },
    {
      'name': 'Mere Bhole Nath Mp3 - Jubin Nautiyal',
      'path': 'assets/songs/5.mp3',
      'player': AssetsAudioPlayer(),
      'totalDuration': Duration.zero,
      "image":"assets/base.gif",
    },
    {
      'name': 'Ishwar Mp3 - Shivam Hudda',
      'path': 'assets/songs/6.mp3',
      'player': AssetsAudioPlayer(),
      'totalDuration': Duration.zero,
      "image":"assets/base.gif",
    },
    {
      'name': 'Om Namah Shivay Mp3 - Narci',
      'path': 'assets/songs/7.mp3',
      'player': AssetsAudioPlayer(),
      'totalDuration': Duration.zero,
      "image":"assets/base.gif",
    },
    {
      'name': 'Bhole Mp3 - Hansraj Raghuwanshi',
      'path': 'assets/songs/8.mp3',
      'player': AssetsAudioPlayer(),
      'totalDuration': Duration.zero,
      "image":"assets/base.gif",
    },
    {
      'name': 'Bhola Mera Mp3 - Viruss',
      'path': 'assets/songs/9.mp3',
      'player': AssetsAudioPlayer(),
      'totalDuration': Duration.zero,
      "image":"assets/base.gif",
    },
    {
      'name': 'Hey Shambhu Mp3 - Narci',
      'path': 'assets/songs/10.mp3',
      'player': AssetsAudioPlayer(),
      'totalDuration': Duration.zero,
      "image":"assets/base.gif",
    },
    {
      'name':
          'Shiv Tandav, Aigiri Nandini Mp3 - Sachet Tandon, Parampara Tandon',
      'path': 'assets/songs/11.mp3',
      'player': AssetsAudioPlayer(),
      'totalDuration': Duration.zero,
      "image":"assets/base.gif",
    },
    {
      'name': 'Gauri Shankar Mp3 - Hansraj Raghuwanshi',
      'path': 'assets/songs/12.mp3',
      'player': AssetsAudioPlayer(),
      'totalDuration': Duration.zero,
      "image":"assets/base.gif",
    },
    {
      'name': 'Kaashi Mein Kailashi Mp3 - Hansraj Raghuwanshi',
      'path': 'assets/songs/13.mp3',
      'player': AssetsAudioPlayer(),
      'totalDuration': Duration.zero,
      "image":"assets/base.gif",
    },
  ];
}

class GlobalColor{
static const Color color1 = Color(0xFFEDCC65);
static const Color color2 = Color(0xFF000000);
static const Color color3 = Color(0xFFAC7200);
static const Color color4 = Color(0xFF9E9E9E);
}