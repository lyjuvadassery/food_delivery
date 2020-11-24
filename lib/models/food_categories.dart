import 'package:flutter/material.dart';

class FoodCategory {
  int categoryId;
  String categoryName;
  String categoryImageUrl;

  FoodCategory({
    @required this.categoryId,
    @required this.categoryName,
    @required this.categoryImageUrl,
  });
}

final snacks = FoodCategory(
  categoryId: 1,
  categoryName: 'Snacks',
  categoryImageUrl:
      'https://image.shutterstock.com/image-photo/salty-snacks-pretzels-chips-crackers-260nw-637166818.jpg',
);

final farsan = FoodCategory(
  categoryId: 2,
  categoryName: 'Farsan',
  categoryImageUrl:
      'https://5.imimg.com/data5/WP/IK/MY-7141536/mix-farshan-500x500.jpg',
);

final sweets = FoodCategory(
  categoryId: 3,
  categoryName: 'Sweets',
  categoryImageUrl:
      'https://c.ndtvimg.com/2019-10/o52ta3a8_sweets-_625x300_26_October_19.jpg',
);

final dryFruits = FoodCategory(
  categoryId: 4,
  categoryName: 'Dry Fruits',
  categoryImageUrl:
      'https://tiimg.tistatic.com/fp/1/005/762/indian-dry-fruits-379.jpg',
);

final chocolates = FoodCategory(
  categoryId: 5,
  categoryName: 'Chocolates',
  categoryImageUrl:
      'https://cdn.getyourguide.com/img/tour/5c9f309e0fceb.jpeg/148.jpg',
);

final sandwiches = FoodCategory(
  categoryId: 6,
  categoryName: 'Sandwiches',
  categoryImageUrl:
      'https://i2.wp.com/www.vegrecipesofindia.com/wp-content/uploads/2014/01/veg-grilled-sandwich-recipe-1.jpg',
);

final pizzas = FoodCategory(
  categoryId: 7,
  categoryName: 'Pizzas',
  categoryImageUrl:
      'https://image.shutterstock.com/image-photo/vegetarian-pizza-on-dark-background-260nw-406259110.jpg',
);
