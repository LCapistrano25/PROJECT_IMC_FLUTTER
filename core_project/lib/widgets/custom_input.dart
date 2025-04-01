import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

Widget inputFormatter(TextInputType type, TextInputFormatter filter, String label, TextEditingController? controller) {
  return TextField(
    controller: controller,
    keyboardType: type,
    inputFormatters: [filter],
    decoration: InputDecoration(
      labelText: label,
      border: OutlineInputBorder(),
    ),
  );
}