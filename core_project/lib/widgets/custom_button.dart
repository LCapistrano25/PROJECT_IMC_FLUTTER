import 'package:flutter/material.dart';

class FormatButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const FormatButton({required this.text, required this.onPressed, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
	return ElevatedButton(
	  onPressed: onPressed,
	  child: Text(text),
	);
  }
}