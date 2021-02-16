import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

Widget card(String name, String url) {
  return Card(
    shape: RoundedRectangleBorder(
      side: BorderSide(color: Colors.white70, width: 1),
      borderRadius: BorderRadius.circular(10),
    ),
    elevation: 5.0,
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Container(
              width: 25,
              height: 25,
              child: Image.network("$url"),
            ),
          ),
          Text(
            '$name',
            style: TextStyle(fontFamily: 'RobotoMono'),
          ),
        ],
      ),
    ),
  );
}

Widget imageCarousel = Container(
  height: 200.0,
  child: Carousel(
    boxFit: BoxFit.cover,
    images: [
      Image.network(
        "https://github.com/Santos-Enoque/flutter_ecommerce_app/blob/master/images/c1.jpg?raw=true",
        fit: BoxFit.cover,
      ),
      Image.network(
        "https://github.com/Santos-Enoque/flutter_ecommerce_app/blob/master/images/m1.jpeg?raw=true",
        fit: BoxFit.cover,
      ),
      Image.network(
        "https://static-01.daraz.pk/other/shop/18d9d87fd966e23b93b026da10fa2c01.jpeg_2200x2200q80.jpg_.webp",
        fit: BoxFit.cover,
      ),
      Image.network(
        "https://www.bragvintage.co.uk/skin/frontend/bragvintage/default/images/blog-images//womensvintagelevis.jpg",
        fit: BoxFit.cover,
      ),
      Image.network(
        "https://www.listing.com.pk/wp-content/uploads/2017/09/22-610x380.jpg",
        fit: BoxFit.cover,
      ),
    ],
    animationCurve: Curves.fastOutSlowIn,
    animationDuration: Duration(milliseconds: 1000),
    dotSize: 4.0,
    indicatorBgPadding: 4.0,
    dotBgColor: Colors.transparent,
  ),
);
