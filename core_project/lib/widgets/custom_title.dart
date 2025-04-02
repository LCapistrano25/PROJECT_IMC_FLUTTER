import 'package:flutter/material.dart';

Widget formatTitle(String text) {
  return Text(
    text,
    style: const TextStyle(
      color: Color.fromARGB(255, 14, 14, 15),
      fontSize: 24.0,
      fontWeight: FontWeight.bold,
      letterSpacing: 1.5,
    ),
  );
}