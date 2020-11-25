import 'package:flutter/material.dart';
import 'package:flutter_demo/models/food_item.dart';
import 'package:flutter_demo/pages/food_item_details_page.dart';
import 'package:flutter_demo/utilities/constants.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class FoodItemCard extends StatelessWidget {
  const FoodItemCard({
    Key key,
    @required this.foodItem,
  }) : super(key: key);

  final FoodItem foodItem;

  Widget _formatPrice() {
    String priceWithRupeeSymbol =
        NumberFormat.simpleCurrency(locale: 'en_IN', decimalDigits: 2)
            .format(foodItem.price)
            .toString();

    List<String> rupeeAndPaiseText = priceWithRupeeSymbol.split('.');

    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: rupeeAndPaiseText[0],
            style: TextStyle(
              color: kDarkGrey2,
              fontSize: 14.0,
            ),
          ),
          WidgetSpan(
            child: Transform.translate(
              offset: const Offset(2, -4),
              child: Text(
                rupeeAndPaiseText[1],
                textScaleFactor: 0.7,
                style: TextStyle(color: kDarkGrey2),
              ),
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    double _mediaHeight = MediaQuery.of(context).size.height;
    double _mediaWidth = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Trupti',
                      style: GoogleFonts.galada(
                        textStyle: TextStyle(
                          fontSize: 14.0,
                          color: kDarkGrey2,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Text(
                      '+',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: kDarkGrey2,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              InkWell(
                onTap: () {
                  print('Food Item ID: ${foodItem.id}');

                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          FoodItemDetailsPage(foodItem: foodItem),
                    ),
                  );
                },
                child: Container(
                  width: double.maxFinite,
                  child: Center(
                    child: Hero(
                      tag: 'avatar_' + foodItem.id.toString(),
                      child: CircleAvatar(
                        radius: 40,
                        backgroundImage: NetworkImage(
                          foodItem.imageUrl,
                        ),
                        backgroundColor: Colors.transparent,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                foodItem.name,
                style: TextStyle(
                  fontSize: 14.0,
                  color: kDarkGrey2,
                ),
              ),
              SizedBox(
                height: 6.0,
              ),
              _formatPrice(),
              SizedBox(
                height: 6.0,
              ),
              Text(
                foodItem.serving,
                style: TextStyle(
                  fontSize: 13.0,
                  color: kDarkGrey,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
