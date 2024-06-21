import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class OfferCarousel extends StatelessWidget {
  OfferCarousel({super.key, required this.height});
  double height;
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
        items: [
          ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: const Image(
                image: AssetImage('assets/images/offers.png'),
                fit: BoxFit.cover,
              )),
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: const Image(
              image: AssetImage('assets/images/banner2.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: const Image(
              image: AssetImage('assets/images/banner3.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ],
        options: CarouselOptions(
            height: height * 0.18,
            initialPage: 0,
            //aspectRatio: 16/9,
            viewportFraction: 1,
            enlargeCenterPage: true,
            enableInfiniteScroll: true,
            reverse: false,
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 3),
            autoPlayAnimationDuration: const Duration(seconds: 1),
            autoPlayCurve: Curves.fastOutSlowIn,
            scrollDirection: Axis.horizontal));
    
  }
}
