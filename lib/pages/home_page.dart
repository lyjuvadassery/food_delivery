import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_demo/models/banner_image.dart';
import 'package:flutter_demo/models/food_categories.dart';
import 'package:flutter_demo/utilities/constants.dart';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_demo/widgets/carousel_image.dart';
import 'package:flutter_demo/widgets/food_category_label.dart';
import 'package:flutter_demo/widgets/search_field.dart';

class HomePage extends StatelessWidget {
  double _mediaHeight;
  double _mediaWidth;

  List<String> _shoppingCardItems = ['Veg Burger'];
  List<BannerImage> _bannerImages = [bannerImage1, bannerImage2, bannerImage3];
  List<FoodCategory> _foodCategories = [
    snacks,
    farsan,
    sweets,
    dryFruits,
    chocolates,
    sandwiches,
    pizzas,
  ];

  @override
  Widget build(BuildContext context) {
    _mediaHeight = MediaQuery.of(context).size.height;
    _mediaWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 5.0,
        leading: Icon(
          CupertinoIcons.ellipsis_vertical,
          size: 30.0,
          color: kDarkGrey3,
        ),
        title: Icon(
          Icons.location_on_outlined,
          size: 30.0,
          color: kDarkGrey3,
        ),
        actions: [
          Stack(
            alignment: Alignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: Icon(
                  CupertinoIcons.cart,
                  size: 30.0,
                  color: kDarkGrey3,
                ),
              ),
              if (_shoppingCardItems.isNotEmpty)
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      height: 21.0,
                      width: 21.0,
                      decoration: BoxDecoration(
                        color: kOrange,
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: Text(
                          _shoppingCardItems.length.toString(),
                          style: TextStyle(fontSize: 8.0),
                        ),
                      ),
                    ),
                  ),
                ),
            ],
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: 20.0,
            ),
            SizedBox(
              width: _mediaWidth * 0.9,
              height: 60.0,
              child: Center(child: SearchField()),
            ),
            Container(
              padding: const EdgeInsets.all(16.0),
              child: CarouselSlider(
                options: CarouselOptions(
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 3),
                  viewportFraction: 1,
                  aspectRatio: 20 / 9,
                ),
                items: _bannerImages
                    .map(
                      (bannerImage) => CarouselImage(bannerImage: bannerImage),
                    )
                    .toList(),
              ),
            ),
            Divider(),
            SizedBox(
              height: 16.0,
            ),
            SizedBox(
              height: 110.0,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: _foodCategories.length,
                itemBuilder: (BuildContext context, int index) =>
                    FoodCategoryLabel(
                  foodCategory: _foodCategories[index],
                ),
              ),
            ),
            SizedBox(
              height: 16.0,
            ),
            Divider(),
          ],
        ),
      ),
    );
  }
}
