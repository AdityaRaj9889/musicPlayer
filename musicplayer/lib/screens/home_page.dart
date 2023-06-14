


import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:musicplayer/global.dart';
import 'package:musicplayer/screens/player_page.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';


class MusicHomePage extends StatefulWidget {
  const MusicHomePage({Key? key}) : super(key: key);

  @override
  State<MusicHomePage> createState() => _MusicHomePageState();
}

class _MusicHomePageState extends State<MusicHomePage> {


  int activeSlider = 0;
  List banners = [
    "assets/banner/b1.jpg",
    "assets/banner/b2.jpg",
    "assets/banner/b3.jpg",
    "assets/banner/b4.jpg"
  ];
  
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
      body: 
      
      Column(
        children: [
           Stack(
                alignment: AlignmentDirectional.bottomCenter,
                children: [
                  CarouselSlider.builder(
                      itemCount: banners.length,
                      itemBuilder: (context, index, realIndex) {
                        //final sliderImage = sliderList[index];
                        return Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          elevation: 3,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              banners[index],
                              fit: BoxFit.cover,
                              width: double.maxFinite,
                            ),
                          ),
                        );
                      },
                      options: CarouselOptions(
                          height: 150,
                          autoPlay: true,
                          // reverse: true,
                          autoPlayInterval: const Duration(seconds: 2),
                          viewportFraction: 0.9,
                          //enlargeCenterPage: true,
                          enlargeStrategy: CenterPageEnlargeStrategy.height,
                          onPageChanged: (index, reason) {
                            setState(() {
                              activeSlider = index;
                            });
                          })),
                  Padding(
                    padding: const EdgeInsets.all(12),
                    child: AnimatedSmoothIndicator(
                      activeIndex: activeSlider,
                      count: banners.length,
                      effect: const ExpandingDotsEffect(
                        dotHeight: 8,
                        dotWidth: 8,
                        activeDotColor: Colors.white,
                        dotColor: Colors.white54,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10,),
          Expanded(
            child: ListView.builder(
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
          ),
        ],

      ),
    );
  }
}
