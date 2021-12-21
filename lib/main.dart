import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movies/screens/login_screen.dart';
import 'package:movies/styles/constants.dart';
import 'package:intl/date_symbol_data_local.dart';

void main() {
  initializeDateFormatting('fr_FR', null).then((_) => runApp(const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Firebase.initializeApp(),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          print(snapshot.error);
        }
        if (snapshot.connectionState == ConnectionState.done) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Movies',
            supportedLocales: const [
              Locale('fr', 'FR'),
            ],
            theme: ThemeData(
              cupertinoOverrideTheme: const CupertinoThemeData(
                primaryColor: mainColor,
              ),
              textSelectionTheme:
                  const TextSelectionThemeData(cursorColor: mainColor),
              primaryColor: mainColor,
            ),
            home: const LoginForm(),
          );
        } else {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            home: Scaffold(
              body: Text(snapshot.error.toString()),
            ),
          );
        }
      },
    );
  }
}
