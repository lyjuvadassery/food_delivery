import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_demo/models/food_item.dart';
import 'package:flutter_demo/models/food_packet.dart';
import 'package:flutter_demo/utilities/constants.dart';
import 'package:flutter_demo/widgets/custom_recttween.dart';
import 'package:intl/intl.dart';

class FoodItemDetailsPage extends StatefulWidget {
  const FoodItemDetailsPage({
    Key key,
    @required this.foodItem,
  }) : super(key: key);

  final FoodItem foodItem;

  @override
  _FoodItemDetailsPageState createState() => _FoodItemDetailsPageState();
}

class _FoodItemDetailsPageState extends State<FoodItemDetailsPage> {
  List<DropdownMenuItem<FoodPacket>> _foodPacketMenuItems;
  FoodPacket _selectedItem;

  List<FoodPacket> _foodPacketItems;

  int _selectedQuantity;

  @override
  void initState() {
    _selectedQuantity = 1;

    _foodPacketItems = [
      FoodPacket(
        id: 1,
        packetSize: '2 kg',
      ),
      FoodPacket(
        id: 2,
        packetSize: '4 kg',
      ),
      FoodPacket(
        id: 3,
        packetSize: '5 kg',
      ),
      FoodPacket(
        id: 4,
        packetSize: '8 kg',
      ),
      FoodPacket(
        id: 5,
        packetSize: '10 kg',
      ),
    ];

    print(_foodPacketItems[0].packetSize.toString());

    _foodPacketMenuItems = _buildDropDownMenuItems();
    _selectedItem = _foodPacketItems[0];
    super.initState();
  }

  List<DropdownMenuItem<FoodPacket>> _buildDropDownMenuItems() {
    List<DropdownMenuItem<FoodPacket>> items = [];
    for (FoodPacket foodPacket in _foodPacketItems) {
      print('foodPacket.packetSize: ${foodPacket.packetSize}');
      items.add(
        DropdownMenuItem(
          child: Text(
            foodPacket.packetSize,
            style: TextStyle(
              color: kDarkGrey2,
            ),
          ),
          value: foodPacket,
        ),
      );
    }
    return items;
  }

  Widget _formatPrice(double price) {
    String priceWithRupeeSymbol =
        NumberFormat.simpleCurrency(locale: 'en_IN', decimalDigits: 2)
            .format(price)
            .toString();

    List<String> rupeeAndPaiseText = priceWithRupeeSymbol.split('.');

    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: rupeeAndPaiseText[0],
            style: TextStyle(
              color: kDarkGrey2,
              fontSize: 18.0,
            ),
          ),
          WidgetSpan(
            child: Transform.translate(
              offset: const Offset(2, -4),
              child: Text(
                rupeeAndPaiseText[1],
                textScaleFactor: 0.8,
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

    print('Food Item ID: ${widget.foodItem.id}');

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 8.0, right: 8.0, top: 60.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Icon(
                            Icons.close,
                            size: 24.0,
                            color: kDarkGrey2,
                          ),
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                        Text(
                          'Product Details',
                          style: TextStyle(
                            fontSize: 18.0,
                            color: kDarkGrey2,
                          ),
                        ),
                        Expanded(child: SizedBox()),
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
                            if (shoppingCardItems.isNotEmpty)
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
                                        shoppingCardItems.length.toString(),
                                        style: TextStyle(
                                          fontSize: 8.0,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Container(
                    width: double.maxFinite,
                    child: Center(
                      child: Hero(
                        tag: 'avatar_' + widget.foodItem.id.toString(),
                        child: CircleAvatar(
                          radius: 100,
                          backgroundImage: NetworkImage(
                            widget.foodItem.imageUrl,
                          ),
                          backgroundColor: Colors.transparent,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 30.0,
                  ),
                  Text(
                    widget.foodItem.name,
                    style: TextStyle(
                      fontSize: 20.0,
                      color: kDarkGrey,
                    ),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceB,
                    children: [
                      Container(
                        height: 40.0,
                        width: 100.0,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: kDarkGrey2,
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(30),
                          ),
                        ),
                        child: Center(
                          child: DropdownButton<FoodPacket>(
                              value: _selectedItem,
                              items: _foodPacketMenuItems,
                              onChanged: (value) {
                                setState(() {
                                  _selectedItem = value;
                                });
                              }),
                        ),
                      ),
                      Expanded(child: SizedBox()),
                      MaterialButton(
                        shape:
                            CircleBorder(side: BorderSide(color: kDarkGrey2)),
                        onPressed: () {
                          if (_selectedQuantity > 1) {
                            _selectedQuantity -= 1;
                            setState(() {});
                          }
                        },
                        child: Text(
                          '-',
                          style: TextStyle(
                            color: kDarkGrey2,
                            fontSize: 16.0,
                          ),
                        ),
                      ),
                      Container(
                        height: 35.0,
                        width: 35.0,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            width: 1.0,
                            color: kDarkGrey2,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            _selectedQuantity.toString(),
                            style: TextStyle(fontSize: 14.0),
                          ),
                        ),
                      ),
                      MaterialButton(
                        shape:
                            CircleBorder(side: BorderSide(color: kDarkGrey2)),
                        onPressed: () {
                          _selectedQuantity += 1;
                          setState(() {});
                        },
                        child: Text(
                          '+',
                          style: TextStyle(
                            color: kDarkGrey2,
                            fontSize: 14.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    children: [
                      _formatPrice(widget.foodItem.price),
                      Expanded(child: SizedBox()),
                      Icon(
                        Icons.done,
                        color: kDarkGreen,
                      ),
                      SizedBox(
                        width: 5.0,
                      ),
                      Text(
                        'In Stock',
                        style: TextStyle(
                          color: kDarkGreen,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Divider(),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    'Best Before 27 Feb 2022',
                    style: TextStyle(
                      fontSize: 14.0,
                      color: kDarkGrey3,
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    children: [
                      Text(
                        'Free delivery above ',
                        style: TextStyle(
                          fontSize: 14.0,
                          color: kDarkGrey,
                        ),
                      ),
                      _formatPrice(599.00),
                    ],
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    children: [
                      Text(
                        'Minimum order value of ',
                        style: TextStyle(
                          fontSize: 14.0,
                          color: kDarkGrey,
                        ),
                      ),
                      _formatPrice(200.00),
                    ],
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                ],
              ),
            ),
            Divider(
              thickness: 4.0,
              color: kUnselectedGreyColor,
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              height: 50.0,
              width: _mediaWidth * 0.9,
              decoration: BoxDecoration(
                border: Border.all(
                  color: kSelectedRedColor,
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(50),
                ),
              ),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      CupertinoIcons.cart,
                      size: 26.0,
                      color: kSelectedRedColor,
                    ),
                    SizedBox(
                      width: 12.0,
                    ),
                    Text(
                      'Add to Cart',
                      style: TextStyle(
                        color: kSelectedRedColor,
                        fontSize: 18.0,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
