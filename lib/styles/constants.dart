import 'package:flutter/material.dart';

const mainBackgroundColor =  Color(0xFFeaeaea);
const mainColor = Color(0xFF244d5f);
const secondColor = Color(0xFF797F8A);
const thirdColor = Color(0xFFFF6978);
const mainFontFamily = "main";

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

const kVoteStyle = TextStyle(
  fontFamily: "main",
  fontWeight: FontWeight.bold,
  color: mainColor,
  fontSize: 15.0,
  decoration: TextDecoration.none,
);
// Text Styles
const kLargeTitleStyle = TextStyle(
  fontSize: 28.0,
  fontWeight: FontWeight.bold,
  color: mainColor,
  fontFamily: "main",
  decoration: TextDecoration.none,
);
const kTitle1Style = TextStyle(
  fontSize: 24.0,
  fontWeight: FontWeight.bold,
  color: mainColor,
  fontFamily: "main",
  decoration: TextDecoration.none,
);

const kTitleSection = TextStyle(
  fontSize: 22.0,
  fontWeight: FontWeight.normal,
  color: mainColor,
  fontFamily: "main",
  decoration: TextDecoration.none,
);

const kCardTitleStyle = TextStyle(
  fontFamily: "main",
  fontWeight: FontWeight.bold,
  color: mainColor,
  fontSize: 15.0,
  decoration: TextDecoration.none,
);

const kTagLineStyle = TextStyle(
  fontFamily: "main",
  fontWeight: FontWeight.w400,
  fontStyle: FontStyle.italic,
  color: secondColor,
  fontSize: 15.0,
  decoration: TextDecoration.none,
);

const kGenreStyle = TextStyle(
  fontFamily: "main",
  fontWeight: FontWeight.w400,
  fontStyle: FontStyle.normal,
  color: thirdColor,
  fontSize: 15.0,
  decoration: TextDecoration.none,
);
const kSubtitleStyle = TextStyle(
  fontSize: 16.0,
  color: secondColor,
  fontFamily: "main",
  decoration: TextDecoration.none,
);
const kCardSubtitleStyle = TextStyle(
  fontFamily: "main",
  color: Color(0xE6FFFFFF),
  fontSize: 13.0,
  decoration: TextDecoration.none,
);
const kCaptionLabelStyle = TextStyle(
  fontSize: 12.0,
  color: secondColor,
  fontFamily: "main",
  decoration: TextDecoration.none,
);

var kLoginInputTextStyle = TextStyle(
  fontSize: 15.0,
  color: Colors.black.withOpacity(0.3),
  fontFamily: "main",
  decoration: TextDecoration.none,
);