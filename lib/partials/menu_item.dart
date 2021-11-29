import 'package:flutter/material.dart';
import 'package:movies/models/data_item.dart';
import '../styles/constants.dart';

class MenuItem extends StatelessWidget {
  final MenuItemData _menuItemData;

  const MenuItem(this._menuItemData, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Row(
        children: [
          Container(
              decoration: BoxDecoration(
                  gradient: _menuItemData.gradient,
                  borderRadius: const BorderRadius.all(
                      Radius.circular(12)
                  )
              ),
              child: IconButton(
                icon: _menuItemData.icon,
                color: Colors.white,
                onPressed: () {

                },
              ),
            ),
          const SizedBox(
            width: 12,
          ),
          Text(
            _menuItemData.name,
            style: fontStyleMenuItem,
          ),
        ],
      ),
    );
  }
}
