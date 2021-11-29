import 'package:flutter/material.dart';
import 'package:movies/styles/constants.dart';

class MyTitle extends StatelessWidget {
  final String _text;
  const MyTitle(this._text, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      _text,
      style: titleFontStyle,
    );
  }
}
