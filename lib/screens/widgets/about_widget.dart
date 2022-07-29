import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/data/data.dart';

class AboutWidget extends StatelessWidget {
  const AboutWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        scrollPhysics: const ClampingScrollPhysics(),
        aspectRatio: 2.0,
        enlargeCenterPage: false,
        autoPlay: true,
        autoPlayInterval: const Duration(seconds: 3),
        autoPlayAnimationDuration: const Duration(milliseconds: 800),
        autoPlayCurve: Curves.fastOutSlowIn,
        pauseAutoPlayOnTouch: true,
        scrollDirection: Axis.horizontal,
        viewportFraction: 1.0,
      ),
      items: techList.map((tech) {
        return ClipRRect(
          clipBehavior: Clip.hardEdge,
          borderRadius: BorderRadius.circular(10),
          child: Image.asset(
            isAntiAlias: true,
            tech.imagePath,
            fit: BoxFit.cover,
          ),
        );
      }).toList(),
    );
  }
}
