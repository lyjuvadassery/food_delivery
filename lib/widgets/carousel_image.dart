import 'package:flutter/material.dart';
import 'package:flutter_demo/models/banner_image.dart';
import 'package:flutter_demo/utilities/constants.dart';
import 'package:google_fonts/google_fonts.dart';

class CarouselImage extends StatelessWidget {
  BannerImage bannerImage;
  CarouselImage({@required this.bannerImage});

  @override
  Widget build(BuildContext context) {
    double _mediaHeight = MediaQuery.of(context).size.height;
    double _mediaWidth = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Container(
        // height: _mediaHeight * 0.1,
        child: Stack(
          children: [
            Opacity(
              opacity: 0.5,
              child: Container(
                width: _mediaWidth,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(bannerImage.backgroundImageUrl),
                    fit: BoxFit.cover,
                  ),
                  border: Border.all(
                    color: kDarkGrey,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0, top: 8.0),
                    child: Row(
                      children: [
                        Expanded(child: SizedBox()),
                        Container(
                          height: 40.0,
                          width: 60.0,
                          decoration: BoxDecoration(
                            color: kMediumGrey,
                            borderRadius:
                                BorderRadius.all(Radius.elliptical(60, 40)),
                            border: Border.all(
                              width: 0.5,
                              color: kMediumGreen,
                            ),
                          ),
                          child: Center(
                            child: Text(
                              'Trupti',
                              style: GoogleFonts.galada(
                                textStyle: TextStyle(
                                  fontSize: 12.0,
                                  color: kDarkGrey2,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        'Think Mumbai.',
                        style: GoogleFonts.galada(
                          textStyle: TextStyle(
                            fontSize: 14.0,
                            color: kDarkGrey2,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      CircleAvatar(
                        radius: 40,
                        backgroundImage: NetworkImage(bannerImage.foodImageUrl),
                        backgroundColor: Colors.transparent,
                      ),
                      Text(
                        'Think Trupti.',
                        style: GoogleFonts.galada(
                          textStyle: TextStyle(
                            fontSize: 14.0,
                            color: kDarkGrey2,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
