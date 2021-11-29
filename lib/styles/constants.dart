import 'package:flutter/material.dart';

const mainBackgroundColor =  Color(0xFFeaeaea);
const mainColor = Color(0xFF244d5f);

const fontStyleMenuItem = TextStyle(
    fontFamily: "main",
    fontSize: 18,
    fontWeight: FontWeight.w700,
);

const fontStyleLegend = TextStyle(
  fontFamily: "main",
  fontSize: 14,
  fontWeight: FontWeight.w300,
);

const movieTitleStyle = TextStyle(
  fontFamily: "main",
  fontSize: 14,
  fontWeight: FontWeight.w700,
  color: mainColor,
);

const movieDateStyle = TextStyle(
  fontFamily: "main",
  fontSize: 12,
  fontWeight: FontWeight.w300,
  color: Colors.grey,
);

const titleFontStyle = TextStyle(
  fontFamily: "main",
  fontSize: 24,
  fontWeight: FontWeight.w700,
  color: mainColor,
);
const subTitleFontStyle = TextStyle(
  fontFamily: "main",
  fontSize: 20,
  fontWeight: FontWeight.w300,
  color: mainColor,
);
const homeGradientButton = LinearGradient(
  begin: Alignment.topRight,
  end: Alignment.bottomLeft,
  colors: [
    Color(0xFFad5389),
    Color(0xFF3c1053),
  ],
);
const paymentGradientButton = LinearGradient(
  begin: Alignment.topRight,
  end: Alignment.bottomLeft,
  colors: [
    Color(0xFF89216B),
    Color(0xFFDA4453),
  ],
);
const settingsGradientButton = LinearGradient(
  begin: Alignment.topRight,
  end: Alignment.bottomLeft,
  colors: [
    Color(0xFFFF416C),
    Color(0xFFFF4B2B),
  ],
);

const logoutGradientButton = LinearGradient(
  begin: Alignment.topRight,
  end: Alignment.bottomLeft,
  colors: [
    Color(0xFFFFFFFF),
    Color(0xFFFFFFFF),
  ],
);

List<BoxShadow> boxShadowItem = [
  BoxShadow(
    color: Colors.black.withOpacity(0.1),
    spreadRadius: 2,
    blurRadius: 4,
    offset: const Offset(1, 1),
  ),
];

const BorderRadius borderRadiusItem = BorderRadius.all(
    Radius.circular(10)
);