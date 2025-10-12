import 'package:evently_c16/ui/desgin/design.dart';
import 'package:evently_c16/ui/screens/OnBardeing/OnBoardingScreen.dart';
import 'package:flutter/material.dart';
import 'package:evently_c16/routes.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: App_them.lightThem,
      themeMode: ThemeMode.light,
      initialRoute: App_routes.OnBoardingScreen.route,
      routes: {
        App_routes.OnBoardingScreen.route: (context) => OnBoardingScreen(),
    },
    );
  }
}
