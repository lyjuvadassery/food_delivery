import 'package:flutter/material.dart';
import 'package:flutter_demo/pages/categories_page.dart';

import 'package:flutter_demo/pages/home_page.dart';
import 'package:flutter_demo/pages/orders_page.dart';
import 'package:flutter_demo/utilities/constants.dart';
import 'package:flutter_demo/widgets/common_navigation_bar.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex;

  List<GlobalKey<NavigatorState>> _navigatorKeys = [
    GlobalKey<NavigatorState>(),
    GlobalKey<NavigatorState>(),
    GlobalKey<NavigatorState>()
  ];

  @override
  void initState() {
    _selectedIndex = 1;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        unselectedItemColor: kUnselectedLightGrey,
        selectedItemColor: kSelectedRedColor,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedLabelStyle: TextStyle(
          fontSize: 16.0,
          // color: Colors.red[200],
        ),
        unselectedLabelStyle: TextStyle(
          fontSize: 16.0,
          // color: Colors.green,
        ),
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.category_outlined,
              // color: kUnselectedLightGrey,
              size: 30.0,
            ),
            label: 'CATEGORIES',
            activeIcon: Icon(
              Icons.category_outlined,
              // color: kSelectedRedColor,
              size: 30.0,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
              // color: kUnselectedLightGrey,
              size: 30.0,
            ),
            label: 'HOME',
            activeIcon: Icon(
              Icons.home_outlined,
              // color: kSelectedRedColor,
              size: 30.0,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.receipt_long_outlined,
              // color: kUnselectedLightGrey,
              size: 30.0,
            ),
            label: 'ORDERS',
            activeIcon: Icon(
              Icons.receipt_long_outlined,
              // color: kSelectedRedColor,
              size: 30.0,
            ),
          ),
        ],
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
      body: CommonBottomNavigationBar(
        selectedIndex: _selectedIndex,
        navigatorKeys: _navigatorKeys,
        childrens: [
          CategoriesPage(),
          HomePage(),
          OrdersPage(),
        ],
      ),
    );
  }
}
