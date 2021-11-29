import 'package:flutter/material.dart';
import 'package:movies/styles/constants.dart';

class SubTitle extends StatelessWidget {
  final String _text;
  const SubTitle(this._text, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      _text,
      style: subTitleFontStyle,
    );
  }
}
