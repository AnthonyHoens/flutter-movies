import 'package:flutter/material.dart';
import 'package:movies/styles/constants.dart';

class Avatar extends StatelessWidget {
  final double _width;
  final double _height;
  const Avatar(this._width, this._height ,{Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        borderRadius: borderRadiusItem,
        boxShadow: boxShadowItem,
      ),
      child: Image(
        image: const AssetImage('assets/img/profile_img.jpg'),
        width: _width,
        height: _height,
        filterQuality: FilterQuality.high,
      ),
    );
  }
}
