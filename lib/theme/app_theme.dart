import 'package:flutter/material.dart';

class AppTheme {
  // light theme function
  static ThemeData lightTheme() {
    return ThemeData(
      //scaffoldBackgroundColor
      scaffoldBackgroundColor: Colors.white,

      //normal text theme
      textTheme: TextTheme(
        bodyText2: TextStyle(
          fontSize: 30,
          color: Colors.black87,
        ),
      ),

      //Appbar theme
      appBarTheme: AppBarTheme(
        color: Colors.white,
        elevation: 0,
        textTheme: TextTheme(
          headline6: TextStyle(
            color: Colors.black87,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        iconTheme: IconThemeData(
          color: Colors.black87,
        ),
      ),
    );
  }

  // dark theme function
  static ThemeData darkTheme() {
    return ThemeData(
      scaffoldBackgroundColor: Colors.black87,
      textTheme: TextTheme(
        bodyText2: TextStyle(
          fontSize: 30,
          color: Colors.white,
        ),
      ),

      //Appbar theme
      appBarTheme: AppBarTheme(
        color: Colors.black87,
        elevation: 0,
        textTheme: TextTheme(
          headline6: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
      ),
    );
  }
}
