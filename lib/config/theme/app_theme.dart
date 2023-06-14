import 'package:flutter/material.dart';

const colorList = <Color>[
  Colors.blue,
  Colors.teal,
  Colors.lightBlue,
  Colors.lightGreen,
  Colors.green,
  Colors.yellow,
  Colors.orange,
  Colors.purple,
  Colors.pink,
  Colors.pinkAccent
];


class AppTheme {

  final int selectedColor;
  final bool isDarkMode;

  AppTheme({
    this.isDarkMode = false, 
    this.selectedColor = 0
  }): assert( selectedColor >= 0, 'Selected color must be greater than 0' ),
      assert( selectedColor < colorList.length, 'Selected color must be less or equak than ${ colorList.length -1 }' );


  ThemeData gettheme() => ThemeData(
    useMaterial3: true,
    brightness: isDarkMode ? Brightness.dark : Brightness.light,
    colorSchemeSeed: colorList[ selectedColor ],
    appBarTheme:  const AppBarTheme(
      centerTitle: false
    )
  );

  // method that copy all methods
  AppTheme copyWith({
    int? selectedColor,
    bool? isDarkmode
  }) => AppTheme(

    // create new instance
    selectedColor: selectedColor ?? this.selectedColor,
    isDarkMode: isDarkmode ?? isDarkMode
  );
}