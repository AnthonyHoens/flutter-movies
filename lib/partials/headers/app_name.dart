import 'package:flutter/material.dart';
import 'package:movies/styles/constants.dart';

class AppName extends StatelessWidget {
  const AppName({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      "Movies",
      style: kLargeTitleStyle,
    );
  }
}