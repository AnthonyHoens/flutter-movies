import 'package:flutter/material.dart';
import 'package:movies/models/section_item.dart';
import 'package:movies/partials/navbar/nav_bar.dart';
import 'package:movies/partials/section.dart';
import 'package:movies/screens/side_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  GlobalKey<ScaffoldState> get scaffoldKey => _scaffoldKey;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      key: _scaffoldKey,
      drawer: const SideBar(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: ListView(
            children: [
              const NavBar(),
              const SizedBox(
                height: 40,
              ),
              Section(sectionItemData[0]),
              const SizedBox(height: 30),
              Section(sectionItemData[1]),
            ],
          ),
        ),
      ),
    );
  }
}
