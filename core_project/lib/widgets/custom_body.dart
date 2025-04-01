import 'package:flutter/material.dart';
import 'package:core_project/forms/form_imc.dart';

class createBody extends StatelessWidget {
  const createBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(50),
        child: FormInput(),
      ),
    );
  }
}