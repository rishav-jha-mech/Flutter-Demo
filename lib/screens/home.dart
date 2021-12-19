import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../components//mydrawer.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final img = [
      "https://cdn1-www.superherohype.com/assets/uploads/2017/09/punisher-poster-header3.jpg",
      "https://i.pinimg.com/736x/12/7d/4d/127d4d3507681b2ddf481102d9ab8478.jpg",
      "https://wallpapercave.com/wp/wp6891915.jpg",
      "https://wallpaperaccess.com/full/6520909.jpg",
      "https://tv-fanatic-res.cloudinary.com/iu/s--AEGZUGSy--/t_slideshow/cs_srgb,f_auto,fl_strip_profile.lossy,q_auto:420/v1427759919/slides/daredevil-season-1-character-posters_marvels-daredevil-character-posters.jpg",
      "https://sportshub.cbsistatic.com/i/2021/03/16/29fda3c3-0ad7-43d1-aa55-49a3e5b9f842/the-defenders-1114630.jpg",
      "https://imgc.allpostersimages.com/img/print/u-g-F57P510.jpg?w=550&h=550&p=0",
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        centerTitle: true,
        backgroundColor: const Color(0xff0066FF),
        elevation: 0,
      ),
      drawer: const MyDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                padding:
                    const EdgeInsets.only(top: 16.0, bottom: 8.0, left: 12.0),
                child: const Text(
                  "Best Picks",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                )),
            Container(
              alignment: Alignment.center,
              height: 240.0,
              padding: const EdgeInsets.only(top: 6, bottom: 6),
              color: Colors.white,
              child: CarouselSlider(
                options: CarouselOptions(
                  height: 200.0,
                  autoPlay: true,
                  autoPlayInterval: const Duration(seconds: 8),
                ),
                items: img.map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Column(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width,
                            margin:
                                const EdgeInsets.symmetric(horizontal: 12.0),
                            decoration: const BoxDecoration(
                              color: Colors.greenAccent,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(12.0)),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0x1a000000),
                                  offset: Offset(6.0, 4.0),
                                  blurRadius: 4.0,
                                  spreadRadius: 0.0,
                                ), //BoxShadow
                              ],
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.network(
                                i,
                                fit: BoxFit.cover,
                                height: 200,
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                  );
                }).toList(),
              ),
            ),
            Container(
              height: 400,
              color: Colors.blueAccent,
            ),
            Container(
              height: 400,
              color: Colors.amber,
            ),
            Container(
              height: 400,
              color: Colors.black,
            ),
            Container(
              height: 400,
              color: Colors.deepOrange,
            ),
            Container(
              height: 400,
              color: Colors.lightGreen,
            ),
            Container(
              height: 400,
              color: Colors.lightGreenAccent,
            ),
            Container(
              height: 400,
              color: Colors.purple,
            ),
            Container(
              height: 400,
              color: Colors.purpleAccent,
            ),
            Container(
              height: 400,
              color: Colors.tealAccent,
            ),
            Container(
              height: 400,
              color: Colors.orangeAccent,
            ),
            Container(
              height: 400,
              color: Colors.deepOrangeAccent,
            ),
          ],
        ),
      ),
    );
  }
}
