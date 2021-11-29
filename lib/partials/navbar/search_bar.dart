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
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: borderRadiusItem,
        boxShadow: boxShadowItem,
        color: Colors.white,
      ),
      child: Row(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.45,
            height: 20,
            child: const TextField(
              scrollPadding: EdgeInsets.all(0),
              decoration: InputDecoration(
                icon: Icon(
                  Icons.search,
                  size: 20,
                  color: Colors.black,
                ),
                hintText: "Rechercher...",
                contentPadding: EdgeInsets.all(0),
                focusColor: Colors.black,
                border: InputBorder.none,
                isDense: true,
              ),
            ),
          ),
          const Icon(
            Icons.mic,
            size: 20,
          ),
        ],
      ),
    );
  }
}
