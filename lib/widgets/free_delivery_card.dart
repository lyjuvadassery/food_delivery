import 'package:flutter/material.dart';
import 'package:flutter_demo/utilities/constants.dart';

class FreeDeliveryCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double _mediaHeight = MediaQuery.of(context).size.height;
    double _mediaWidth = MediaQuery.of(context).size.width;

    return Card(
      color: kSelectedRedColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Column(
          children: [
            Text(
              'FREE',
              style: TextStyle(
                fontSize: 16.0,
                color: kMediumGrey,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              'DELIVERY',
              style: TextStyle(
                fontSize: 16.0,
                color: kMediumGrey,
              ),
            ),
            SizedBox(
              height: 16.0,
            ),
            Text(
              '- ON ALL ORDERS -',
              style: TextStyle(
                fontSize: 14.0,
                color: kMediumGrey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
