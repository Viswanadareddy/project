import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project/models/values.dart';

class NewsCarousel extends StatelessWidget {
  NewsCarousel({Key? key}) : super(key: key);
  final StaticValues staticValues = StaticValues();

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(height: 120),
      items: staticValues.news.map((newsItem) {
        return Builder(
          builder: (BuildContext context) {
            var size = MediaQuery.of(context).size;
            return Container(
              margin: EdgeInsets.symmetric(horizontal: 5),
              child: Stack(children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.network(
                    newsItem.image,
                    fit: BoxFit.cover,
                    height: 300,
                  ),
                ),
                Container(
                  width: size.width,
                  margin: EdgeInsets.symmetric(horizontal: 0),
                  height: 250,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Color(0xCC000000),
                            Color(0x00000000),
                            Color(0x00000000),
                            Color(0xCC000000),
                          ])),
                ),
                Align(
                    alignment: Alignment.center,
                    child: Container(
                      margin: EdgeInsets.only(right: 120),
                      child: Text(
                        newsItem.title,
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.w700),
                      ),
                    ))
              ]),
            );
          },
        );
      }).toList(),
    );
  }
}
