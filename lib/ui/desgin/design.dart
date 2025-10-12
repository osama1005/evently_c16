import 'package:flutter/material.dart';

class App_colors {
 static const Color gold = Color(0xffE2BE7F);
 static const Color black = Color(0xff202020);
 static const Color gray = Color(0xff707070);
}

class App_icons {

 //static const String Group29 = "assets/icons/Group29.png";



}

class App_them {
 static var lightThem = ThemeData(
  appBarTheme: AppBarTheme(
      backgroundColor: Colors.transparent,
      surfaceTintColor: Colors.transparent,
      titleTextStyle: TextStyle(
       color: App_colors.gold,
       fontSize: 20,
       fontWeight: FontWeight.bold,
      ),
      centerTitle: true,
      iconTheme: IconThemeData(color: App_colors.gold,)
  ),
  colorScheme: ColorScheme.dark(
      primary: App_colors.gold
  ),
  textTheme: TextTheme(
      titleMedium: TextStyle(
       fontSize: 20,
       fontWeight: FontWeight.bold,
       color: Colors.white,

      ),
      titleLarge: TextStyle(
       fontSize: 24,
       fontWeight: FontWeight.bold,
       color: App_colors.gold,
      ),
      titleSmall: TextStyle(
       fontSize: 14,
       fontWeight: FontWeight.bold,
       color: Colors.white,
      ),
      bodySmall: TextStyle(
       fontSize: 14,
       fontWeight: FontWeight.bold,
       color: Colors.white,
      ),
      bodyLarge: TextStyle(
       color: App_colors.gold,
       fontSize: 20,
       fontWeight: FontWeight.bold,
      )

  ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: App_colors.gold,
      selectedIconTheme: IconThemeData(
       color: Colors.white,
       size: 36,
      ),
      unselectedIconTheme: IconThemeData(
       color: Colors.black,
       size: 24,
      ),
      selectedLabelStyle: TextStyle(
       color: Colors.white,
      ),
      unselectedLabelStyle: TextStyle(
       color: Colors.black,
      )
  ),
  bottomAppBarTheme: BottomAppBarTheme(color: App_colors.gold),
  scaffoldBackgroundColor: Colors.transparent ,
 );

}
