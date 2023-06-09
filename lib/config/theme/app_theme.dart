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

  AppTheme({
    this.selectedColor = 0
  }): assert( selectedColor >= 0, 'Selected color must be greater than 0' ),
      assert( selectedColor < colorList.length, 'Selected color must be less or equak than ${ colorList.length -1 }' );


  ThemeData gettheme() => ThemeData(
    useMaterial3: true,
    colorSchemeSeed: colorList[ selectedColor ],
    appBarTheme:  const AppBarTheme(
      centerTitle: false
    )
  );
}