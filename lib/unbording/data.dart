import 'package:flutter/material.dart';

class OnboardingItem {
  final String title;
  final String subtitles;
  final String image;
  final Color color;
  const OnboardingItem(
      {required this.title,
      required this.subtitles,
      required this.image,
      required this.color});
}

class OnboardingItems {
  static List<OnboardingItem> loadOnboardingItem() {
    const fi = <OnboardingItem>[
      OnboardingItem(
          title: 'ASAP Delivery',
          subtitles: 'Cant hold shit then order in!!!',
          image: 'assets/knife_logo.jpg',
          color: Colors.black87),
      OnboardingItem(
          title: 'ASAP Delivery',
          subtitles: 'Cant hold shit them order in!!!',
          image: 'images/Noodle.png',
          color: Colors.black87),
      OnboardingItem(
          title: 'ASAP Delivery',
          subtitles: 'Cant hold shit them order in!!!',
          image: 'images/Pizza.png',
          color: Colors.black87),
      /*OnboardingItem(
          title: 'ASAP Delivery',
          subtitles: 'Cant hold shit them order in!!!',
          image: 'images/29-juice.png',
          color: Colors.green),*/
    ];
    return fi;
  }
}
