import 'package:flutter/material.dart';
import 'package:movies/partials/avatar.dart';
import 'package:movies/partials/navbar/burger_menu.dart';
import 'package:movies/partials/navbar/search_bar.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        BurgerMenu(),
        SearchBar(),
        Icon(Icons.notifications),
        Avatar(36, 36),
      ],
    );
  }
}
