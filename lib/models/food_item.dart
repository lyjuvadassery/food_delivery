import 'package:flutter/material.dart';

class FoodItem {
  int id;
  String name;
  double price;
  String imageUrl;
  String serving;

  FoodItem({
    @required this.id,
    @required this.name,
    @required this.price,
    @required this.imageUrl,
    @required this.serving,
  });
}

final immunityLaddoo = FoodItem(
  id: 1,
  name: 'Immunity Laddoo',
  price: 329.00,
  imageUrl: 'https://kj2bcdn.b-cdn.net/media/25912/lado.jpg',
  serving: 'per packet [250 gm]',
);

final vegBiryani = FoodItem(
  id: 2,
  name: 'Veg Biryani',
  price: 220.00,
  imageUrl:
      'https://yummytummyrecipes.com/wp-content/uploads/2020/08/Untitled-design-min.png',
  serving: 'per plate [350 gm]',
);

final sevpuri = FoodItem(
  id: 3,
  name: 'Sev Puri',
  price: 30.00,
  imageUrl:
      'https://www.indianhealthyrecipes.com/wp-content/uploads/2017/03/sev-puri-1.jpg',
  serving: 'serves 1',
);

final vegManchurian = FoodItem(
  id: 4,
  name: 'Veg Manchurian',
  price: 180.00,
  imageUrl:
      'https://afcdn1.achalafood.com/wp-content/uploads/2019/01/veg-manchurian-dry-main-feature.jpg',
  serving: 'serves 2',
);

final maggiNoodles = FoodItem(
  id: 5,
  name: 'Maggi Noodles',
  price: 40.00,
  imageUrl:
      'https://asmallbite.com/wp-content/uploads/2018/05/Maggi-Noodles-Recipe-1-450x375.jpg',
  serving: 'per bowl [300 gm]',
);

final thepla = FoodItem(
  id: 6,
  name: 'Thepla',
  price: 59.00,
  imageUrl:
      'https://www.tarladalal.com/members/9306/big/big_methi_thepla,_gujarati_methi_thepla_recipe-14510.jpg',
  serving: '4 theplas',
);

final sujiHalwa = FoodItem(
  id: 7,
  name: 'Suji Halwa',
  price: 180.00,
  imageUrl:
      'https://i2.wp.com/www.vegrecipesofindia.com/wp-content/uploads/2014/07/suji-halwa-recipe.jpg',
  serving: '250 gm',
);

final motichurLaddoo = FoodItem(
  id: 8,
  name: 'Motichur Laddoo',
  price: 410.00,
  imageUrl:
      'https://5.imimg.com/data5/LB/OF/MY-3448166/motichoor-laddoo-500g-500x500.png',
  serving: '500 gm',
);

final samosas = FoodItem(
  id: 9,
  name: 'Samosas',
  price: 50.00,
  imageUrl:
      'https://www.cubesnjuliennes.com/wp-content/uploads/2020/08/Best-Indian-Punjabi-Samosa-Recipe.jpg',
  serving: '4 samosas',
);

final idliSambar = FoodItem(
  id: 10,
  name: 'Idli Sambar',
  price: 50.00,
  imageUrl: 'https://img.food.boxspace.in/image/rbk_5d48442d7ee84/xhdpi.jpg',
  serving: '4 idlis and sambar',
);

final masalaDosa = FoodItem(
  id: 11,
  name: 'Masala Dosa',
  price: 60.00,
  imageUrl:
      'https://www.cookwithmanali.com/wp-content/uploads/2020/05/Masala-Dosa-500x500.jpg',
  serving: '2 dosas per plate',
);

final bhakarVadi = FoodItem(
  id: 12,
  name: 'Bhakar Vadi',
  price: 75.00,
  imageUrl:
      'https://www.bakespace.com/images/large/4ea1270b30f6cd2eb99d0075bc0bb4cf.jpeg',
  serving: 'per packet 300 gm',
);

final carrotHalwa = FoodItem(
  id: 13,
  name: 'Carrot Halwa',
  price: 240.00,
  imageUrl:
      'https://cdn.cdnparenting.com/articles/2020/01/24153853/Carrot-Halwa-Recipe.jpg',
  serving: '200 gm per plate',
);

final chowmienSoup = FoodItem(
  id: 14,
  name: 'Chowmien Soup',
  price: 110.00,
  imageUrl:
      'https://www.mamalovesfood.com/wp-content/uploads/2020/01/EASY-CHOW-MEIN-SOUP-RECIPE.jpg',
  serving: '300 gm per bowl',
);

List<FoodItem> shoppingCardItems = [sevpuri];
