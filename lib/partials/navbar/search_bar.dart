import 'package:flutter/material.dart';
import 'package:movies/styles/constants.dart';

class SearchBar extends StatefulWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(
          vertical: 8,
          horizontal: 11,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: borderRadiusItem,
          boxShadow: boxShadowItem,
        ),
        child: TextField(
          onChanged: (text) {
            print(text);
          },
          scrollPadding: const EdgeInsets.all(0),
          decoration: const InputDecoration(
            icon: Icon(
              Icons.search,
              size: 20,
              color: mainColor,
            ),
            hintText: "Rechercher...",
            hintStyle: TextStyle(
              fontSize: 17,
              color: mainColor,
            ),
            contentPadding: EdgeInsets.all(0),
            focusColor: Colors.black,
            border: InputBorder.none,
            isDense: true,
          ),
        ),
      ),
    );
  }
}
