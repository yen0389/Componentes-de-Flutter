


import 'package:flutter/material.dart';

class AppTheme {

  static const Color primary = Colors.red;

  static final ThemeData ligthTheme = ThemeData.light().copyWith(

  //color primario
      primaryColor: Colors.red,

  //AppBar Theme
     appBarTheme: const AppBarTheme(
         color: primary,
         elevation: 0

     ),
      // TextButton

      textButtonTheme: TextButtonThemeData(

        style: TextButton.styleFrom(primary: primary)
  ),

    //FloatingActionButtons
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: primary,
      elevation: 5
    ),


    //ElevatedButtons
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        primary: Colors.red,
        shape: const StadiumBorder(),
        elevation: 10,
      ),
    ),

    inputDecorationTheme: const InputDecorationTheme(
      floatingLabelStyle: TextStyle( color: primary),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide( color: primary),
        borderRadius: BorderRadius.only( bottomLeft: Radius.circular(10), topRight: Radius.circular(10)),
      ),

      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide( color: primary),
        borderRadius: BorderRadius.only( bottomLeft: Radius.circular(10), topRight: Radius.circular(10)),
      ),

      border: OutlineInputBorder(
        borderRadius: BorderRadius.only( bottomLeft: Radius.circular(10), topRight: Radius.circular(10)),

      ),

    )


  );



}