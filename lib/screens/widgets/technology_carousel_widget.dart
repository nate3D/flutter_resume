import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/data/data.dart';

class TechnologyCarouselWidget extends StatelessWidget {
  const TechnologyCarouselWidget({Key? key}) : super(key: key);

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
        return Stack(
          alignment: Alignment.bottomLeft,
          children: [
            ClipRRect(
              clipBehavior: Clip.hardEdge,
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                isAntiAlias: true,
                tech.imagePath,
                fit: BoxFit.cover,
              ),
            ),
            Text(
              tech.name,
              style: Theme.of(context).textTheme.headline4?.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  shadows: [
                    const Shadow(
                      color: Colors.black,
                      blurRadius: 10,
                      offset: Offset(0, 3),
                    ),
                  ]),
            ),
          ],
        );
      }).toList(),
    );
  }
}
