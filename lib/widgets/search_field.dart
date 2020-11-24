import 'package:flutter/material.dart';
import 'package:flutter_demo/utilities/constants.dart';

class SearchField extends StatefulWidget {
  @override
  _SearchFieldState createState() => _SearchFieldState();
}

class _SearchFieldState extends State<SearchField> {
  String _searchText = "";
  TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _searchController.addListener(() {
      setState(() {
        _searchText = _searchController.text;
      });
    });
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _searchController,
      decoration: InputDecoration(
        hintText: 'What are you looking for?',
        prefixIcon: Icon(
          Icons.search,
          color: kDarkGrey2,
        ),
        suffixIcon: Icon(
          Icons.mic,
          color: kDarkGrey,
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: kDarkGrey, width: 0.5),
          borderRadius: BorderRadius.all(
            Radius.circular(50.0),
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: kDarkGrey, width: 0.5),
          borderRadius: BorderRadius.all(
            Radius.circular(50.0),
          ),
        ),
        border: OutlineInputBorder(
          borderSide: const BorderSide(color: kDarkGrey, width: 0.5),
          borderRadius: BorderRadius.all(
            Radius.circular(50.0),
          ),
        ),
      ),
    );
  }
}
