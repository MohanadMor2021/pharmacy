import 'package:flutter/material.dart';

class OnboardingContents {
  final String title;
  final String image;
  final String desc;

  OnboardingContents(
      {required this.title, required this.image, required this.desc});
}

List<OnboardingContents> contents = [
  OnboardingContents(
    title: "تطبيق Pharmcy Care ",
    image: "assets/images/image1.png",
    desc: " متاح في جميع مناطق قطاع غزة \n مع خدمة على مدار الساعة ",
  ),
  OnboardingContents(
    title: " العديد من المزايا ",
    image: "assets/images/image2.png",
    desc:
        "سرعة في الرد والتوصيل \n خدمة الإستشارات المجانية ",
  ),
  OnboardingContents(
    title: "للدعم الفني",
    image: "assets/images/image3.png",
    desc:
        "جوال-0597888618 \n أو زيارة صفحتنا على الفيس بوك Pharmcy Care Gaza   ",
  ),
];
