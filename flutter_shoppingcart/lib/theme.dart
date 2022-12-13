import 'package:flutter/material.dart';
import 'package:flutter_shoppingcart/constants.dart';

ThemeData theme() {
  return ThemeData(
    primaryColor: kPrimaryColor,
    scaffoldBackgroundColor: kPrimaryColor,
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.white,
      iconTheme: IconThemeData(
        color: Colors.black,
      ),
    ),
  );
}
