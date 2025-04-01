import 'package:flutter/material.dart';

List<String> getLanguage(var context) {
  // Implementar a função para obter o idioma do dispositivo
  if (Localizations.localeOf(context).languageCode == 'pt') {
    // Definir o idioma como português
    var title = 'Calculadora de MMC';
    var label = 'Peso(kg)';
    var label2 = 'Altura(M)';
    var button = 'Calcular MMC';
    var result = 'Resultado: ';
    var error = 'Erro: ';
    var resultado = 'Exemplo de Resultado'; // Definir a variável 'resultado'
    result = 'Resultado: $resultado';

    return [title, label, label2, button, result, error];
  } else {
    // Definir o idioma como inglês
    var title = 'MMC Calculator';
    var label = 'Weight(kg)';
    var label2 = 'Height(M)';
    var button = 'Calculate MMC';
    var result = 'Result: ';
    var error = 'Error: ';
    var resultado = 'Example Result'; // Definir a variável 'resultado'
    result = 'Result: $resultado';

    return [title, label, label2, button, result, error];
  }
}