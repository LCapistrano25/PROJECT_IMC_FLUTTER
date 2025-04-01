import 'package:flutter/material.dart';
import 'package:core_project/utils/language.dart';
import 'package:flutter/services.dart';
import 'package:core_project/widgets/custom_input.dart';

class FormInput extends StatefulWidget {
  const FormInput({Key? key}) : super(key: key);

  @override
  _FormInputState createState() => _FormInputState();
}

class _FormInputState extends State<FormInput> {
  final TextEditingController num1Controller = TextEditingController();
  final TextEditingController num2Controller = TextEditingController();
  double resultado = 0;

  void somarNumeros() {
    double num1 = double.tryParse(num1Controller.text) ?? 0;
    double num2 = double.tryParse(num2Controller.text) ?? 0;
    setState(() {
      resultado = num1/num2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        inputFormatter(
          TextInputType.numberWithOptions(decimal: true),
          FilteringTextInputFormatter.allow(RegExp(r'^\d*[,]?\d*\.?\d*$')),
          getLanguage(context)[1],
          num1Controller,
        ),
        SizedBox(height: 15),
        inputFormatter(
          TextInputType.numberWithOptions(decimal: true),
          FilteringTextInputFormatter.allow(RegExp(r'^\d*[,]?\d*\.?\d*$')),
          getLanguage(context)[2],
          num2Controller,
        ),
        SizedBox(height: 15),
        ElevatedButton(
          onPressed: () {
            somarNumeros();
          },
          child: Text(
            getLanguage(context)[3],
            style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),

        SizedBox(height: 15),

        Text(
          getLanguage(context)[4] + " " + resultado.toString(),
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 15),
      ],
    );
  }
}