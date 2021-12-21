import 'package:flutter/material.dart';
import 'package:movies/models/movie_slider_item.dart';
import 'package:movies/partials/navbar/nav_bar.dart';
import 'package:movies/partials/slider/movie_slider.dart';
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
      key: _scaffoldKey,
      drawer: const SideBar(),
      body: SafeArea(
        bottom: false,
        child: SingleChildScrollView(
          child: Column(
            children: [
              const NavBar(),
              const SizedBox(
                height: 30,
              ),
              MovieSlider(movieSliderItemData[0]),
              const SizedBox(height: 20),
              MovieSlider(movieSliderItemData[1]),
            ],
          ),
        ),
      ),
    );
  }
}
