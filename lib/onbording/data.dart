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
          title: 'Are you a foodie?',
          subtitles:
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In dapibus velit sed urna malesuada volutpat. Vivamus a porttitor neque. Proin tincidunt non nisl sed porta.',
          image: 'assets/1.jpg',
          color: Colors.black87),
      OnboardingItem(
          title: 'Food Delivery at a snap',
          subtitles:
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In dapibus velit sed urna malesuada volutpat. Vivamus a porttitor neque. Proin tincidunt non nisl sed porta.',
          image: 'assets/2.jpg',
          color: Colors.black87),
      OnboardingItem(
          title: 'Never stop your cravings',
          subtitles:
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In dapibus velit sed urna malesuada volutpat. Vivamus a porttitor neque. Proin tincidunt non nisl sed porta.',
          image: 'assets/3.jpg',
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
