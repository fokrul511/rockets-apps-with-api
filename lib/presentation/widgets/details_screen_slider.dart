
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:rocket_apps/data/models/rocket_list_model.dart';

Widget buildImageCarousel(RocketsListModel rocket) {
  if (rocket.flickrImages != null && rocket.flickrImages!.isNotEmpty) {
    return CarouselSlider(
      options: CarouselOptions(
        height: 300,
        enlargeCenterPage: true,
        enableInfiniteScroll: true,
        autoPlay: true,
      ),
      items: rocket.flickrImages!.map((imageUrl) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.symmetric(horizontal: 5.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                image: DecorationImage(
                  image: NetworkImage(imageUrl),
                  fit: BoxFit.cover,
                ),
              ),
            );
          },
        );
      }).toList(),
    );
  } else {
    return const SizedBox(
      height: 400,
      child: Center(
        child: Icon(Icons.image_not_supported, size: 100),
      ),
    );
  }
}