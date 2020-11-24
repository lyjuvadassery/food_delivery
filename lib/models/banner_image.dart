import 'package:flutter/material.dart';

class BannerImage {
  int sequenceId;
  String backgroundImageUrl;
  String foodImageUrl;

  BannerImage({
    @required this.sequenceId,
    @required this.backgroundImageUrl,
    @required this.foodImageUrl,
  });
}

final bannerImage1 = BannerImage(
  sequenceId: 0,
  backgroundImageUrl:
      'https://p7.hiclipart.com/preview/432/504/1018/gateway-of-india-advertising-agency-creative-advertising-ezephyr-advertising-pvt-ltd-design.jpg',
  foodImageUrl:
      'https://cdn.pixabay.com/photo/2010/12/13/10/05/berries-2277__480.jpg',
);

final bannerImage2 = BannerImage(
  sequenceId: 1,
  backgroundImageUrl:
      'https://i.pinimg.com/736x/c5/62/d9/c562d96b108c69250f8385407c876e45--mumbai-marine.jpg',
  foodImageUrl:
      'https://cdn.pixabay.com/photo/2016/07/22/09/59/fruit-1534494__480.jpg',
);

final bannerImage3 = BannerImage(
  sequenceId: 2,
  backgroundImageUrl: 'http://www.apsanatorium.com/images/JuhuBeach.jpg',
  foodImageUrl:
      'https://cdn.pixabay.com/photo/2016/08/11/08/04/vegetables-1584999__480.jpg',
);
