import 'package:flutter/material.dart';
import 'package:movies/partials/avatar.dart';
import 'package:movies/partials/navbar/burger_menu.dart';
import 'package:movies/partials/navbar/search_bar.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          BurgerMenu(),
          SizedBox(
            width: 20,
          ),
          SearchBar(),
          SizedBox(
            width: 20,
          ),
          Icon(Icons.notifications),
          SizedBox(
            width: 20,
          ),
          Avatar(36, 36),
        ],
      ),
    );
  }
}
