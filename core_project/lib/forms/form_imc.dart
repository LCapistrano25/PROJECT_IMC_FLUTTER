import 'package:flutter/material.dart';
import 'package:core_project/utils/language.dart';
import 'package:flutter/services.dart';
import 'package:core_project/widgets/custom_input.dart';
import 'package:core_project/screens/results/result.dart';

class FormInput extends StatelessWidget {
  final TextEditingController num1Controller = TextEditingController();
  final TextEditingController num2Controller = TextEditingController();

  FormInput({Key? key}) : super(key: key);

  double calcularResultado() {
    try{
      double num1 = double.tryParse(num1Controller.text) ?? 0;
      double num2 = double.tryParse(num2Controller.text) ?? 0;
      return num2 != 0 ? num1 / (num2*num2) : 0;
    } catch (e) {
      return 0; // Handle the error by returning a default value
    }
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
            double resultado = calcularResultado();
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Result(result: resultado,)),
            );
          },
          child: Text(
            getLanguage(context)[3],
            style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}
