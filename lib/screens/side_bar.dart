import 'package:flutter/material.dart';
import 'package:movies/partials/avatar.dart';
import 'package:movies/styles/constants.dart';
import 'package:movies/models/data_item.dart';
import 'package:movies/partials/menu_item.dart';

class SideBar extends StatefulWidget {
  const SideBar({Key? key}) : super(key: key);

  @override
  _SideBarState createState() => _SideBarState();
}

class _SideBarState extends State<SideBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.7,
      decoration: const BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              offset: Offset(10, 10),
              blurRadius: 20,
              spreadRadius: 10,
            )
          ],
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(34),
          )),
      child: Padding(
        padding: const EdgeInsets.all(25),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 40.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Avatar(50, 50),
                    const SizedBox(width: 20),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Thebester",
                          style: fontStyleMenuItem,
                        ),
                        Text(
                          "HEPL - DAM",
                          style: fontStyleLegend,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              MenuItem(menuItemsData[0]),
              MenuItem(menuItemsData[1]),
              MenuItem(menuItemsData[2]),
              const Spacer(),
              MenuItem(menuItemsData[3]),
            ],
          ),
        ),
      ),
    );
  }
}
