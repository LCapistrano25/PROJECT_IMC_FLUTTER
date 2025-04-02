import 'package:flutter/material.dart';
import 'package:core_project/screens/home_page/home_page.dart';
import 'package:core_project/utils/theme.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Calculadora de MMC',
      theme: getTheme(),
      home: homePage(),
    ),
  );
}


