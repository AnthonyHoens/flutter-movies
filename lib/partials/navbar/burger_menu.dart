import 'package:flutter/material.dart';
import 'package:movies/models/section_item.dart';
import 'package:movies/styles/constants.dart';

class BurgerMenu extends StatefulWidget {
  const BurgerMenu({Key? key}) : super(key: key);

  @override
  _BurgerMenuState createState() => _BurgerMenuState();
}

class _BurgerMenuState extends State<BurgerMenu> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Scaffold.of(context).openDrawer();
      },
      child: Container(
        decoration: BoxDecoration(
          boxShadow: boxShadowItem,
          color: Colors.white,
          borderRadius: borderRadiusItem,
        ),
        padding: const EdgeInsets.symmetric(
          vertical: 11,
          horizontal: 5,
        ),
        child: const Image(
          image: AssetImage('assets/icons/icon-sidebar.png'),
          width: 30,
          height: 14,
        ),
      ),
    );
  }
}
