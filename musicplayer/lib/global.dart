import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/animation.dart';

class GlobalPlayer {
  static Map playSong = {};
  static int index = 0;
  static List songs = [
    {
      'name': 'Shiv Dhun Mp3 - Jainen',
      'path': 'assets/player/songs/1.mp3',
      'player': AssetsAudioPlayer(),
      'totalDuration': Duration.zero,
      "image":"assets/player/base.gif",
    },
    {
      'name':
          'Kaal Bhairav Ashtakam (The Beginning) Mp3 - Sachet Tandon, Parampara Tandon',
      'path': 'assets/player/songs/2.mp3',
      'player': AssetsAudioPlayer(),
      'totalDuration': Duration.zero,
      "image":"assets/player/base.gif",
    },
    {
      'name': 'Bolo Shiv Mp3 - Pardhaan',
      'path': 'assets/player/songs/3.mp3',
      'player': AssetsAudioPlayer(),
      'totalDuration': Duration.zero,
      "image":"assets/player/base.gif",
    },
    {
      'name': 'Shiva Tandava Stotram Mp3 - Felmale Version',
      'path': 'assets/player/songs/4.mp3',
      'player': AssetsAudioPlayer(),
      'totalDuration': Duration.zero,
      "image":"assets/player/base.gif",
    },
    {
      'name': 'Mere Bhole Nath Mp3 - Jubin Nautiyal',
      'path': 'assets/player/songs/5.mp3',
      'player': AssetsAudioPlayer(),
      'totalDuration': Duration.zero,
      "image":"assets/player/base.gif",
    },
    {
      'name': 'Ishwar Mp3 - Shivam Hudda',
      'path': 'assets/player/songs/6.mp3',
      'player': AssetsAudioPlayer(),
      'totalDuration': Duration.zero,
      "image":"assets/player/base.gif",
    },
    {
      'name': 'Om Namah Shivay Mp3 - Narci',
      'path': 'assets/player/songs/7.mp3',
      'player': AssetsAudioPlayer(),
      'totalDuration': Duration.zero,
      "image":"assets/player/base.gif",
    },
    {
      'name': 'Bhole Mp3 - Hansraj Raghuwanshi',
      'path': 'assets/player/songs/8.mp3',
      'player': AssetsAudioPlayer(),
      'totalDuration': Duration.zero,
      "image":"assets/player/base.gif",
    },
    {
      'name': 'Bhola Mera Mp3 - Viruss',
      'path': 'assets/player/songs/9.mp3',
      'player': AssetsAudioPlayer(),
      'totalDuration': Duration.zero,
      "image":"assets/player/base.gif",
    },
    {
      'name': 'Hey Shambhu Mp3 - Narci',
      'path': 'assets/player/songs/10.mp3',
      'player': AssetsAudioPlayer(),
      'totalDuration': Duration.zero,
      "image":"assets/player/base.gif",
    },
    {
      'name':
          'Shiv Tandav, Aigiri Nandini Mp3 - Sachet Tandon, Parampara Tandon',
      'path': 'assets/player/songs/11.mp3',
      'player': AssetsAudioPlayer(),
      'totalDuration': Duration.zero,
      "image":"assets/player/base.gif",
    },
    {
      'name': 'Gauri Shankar Mp3 - Hansraj Raghuwanshi',
      'path': 'assets/player/songs/12.mp3',
      'player': AssetsAudioPlayer(),
      'totalDuration': Duration.zero,
      "image":"assets/player/base.gif",
    },
    {
      'name': 'Kaashi Mein Kailashi Mp3 - Hansraj Raghuwanshi',
      'path': 'assets/player/songs/13.mp3',
      'player': AssetsAudioPlayer(),
      'totalDuration': Duration.zero,
      "image":"assets/player/base.gif",
    },
  ];
}

class GlobalColor{
static const Color color1 = Color(0xFFEDCC65);
static const Color color2 = Color(0xFF000000);
static const Color color3 = Color(0xFFAC7200);
static const Color color4 = Color(0xFF9E9E9E);
}