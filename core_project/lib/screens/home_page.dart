import 'package:flutter/material.dart';
import 'package:core_project/utils/language.dart';
import 'package:core_project/widgets/custom_body.dart';

class homePage extends StatelessWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text(
          getLanguage(context)[0],
          style: TextStyle(
            color: Colors.black, 
            fontSize: 20, 
            fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Center(child: createBody()),
      backgroundColor: Colors.white,
    );
  }
}
