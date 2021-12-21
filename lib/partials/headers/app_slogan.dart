
import 'package:flutter/material.dart';
import 'package:movies/styles/constants.dart';

class AppSlogan extends StatelessWidget {
  const AppSlogan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      "L’application pour découvrir des nouveaux films",
      style: kTagLineStyle.apply(color: mainColor),
    );
  }
}