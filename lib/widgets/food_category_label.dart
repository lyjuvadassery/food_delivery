import 'package:flutter/material.dart';
import 'package:flutter_demo/models/food_categories.dart';
import 'package:flutter_demo/utilities/constants.dart';

class FoodCategoryLabel extends StatelessWidget {
  const FoodCategoryLabel({
    Key key,
    @required this.foodCategory,
  }) : super(key: key);

  final FoodCategory foodCategory;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Column(
        children: [
          CircleAvatar(
            radius: 40,
            backgroundImage: NetworkImage(foodCategory.categoryImageUrl),
            backgroundColor: Colors.transparent,
          ),
          SizedBox(
            height: 8.0,
          ),
          Text(
            foodCategory.categoryName,
            style: TextStyle(
              color: kDarkGrey2,
              fontSize: 14.0,
            ),
          ),
        ],
      ),
    );
  }
}
