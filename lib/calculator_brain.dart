import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:imc_calculator/constants.dart';

class CalculatorBrain {
  CalculatorBrain({this.height, this.weight});

  final int height;
  final int weight;
  double _imc;

  String calculateIMC() {
    _imc = weight / pow(height / 100, 2);
    return _imc.toStringAsFixed(1);
  }

  String getResult() {
    if (_imc >= 40) {
      resultTextColor = Color(0xFFD62828);
      return 'Obesidade Grave';
    } else if (_imc >= 30) {
      resultTextColor = Color(0xFFF14708);
      return 'Obesidade';
    } else if (_imc >= 25) {
      resultTextColor = Color(0xFFFCAB10);
      return 'Sobrepeso';
    } else if (_imc >= 18.5) {
      resultTextColor = Color(0xFF24D876);
      return 'Normal';
    } else {
      resultTextColor = Color(0xFFF49390);
      return 'Magreza';
    }
  }

  String getInterpretation() {
    if (_imc >= 40) {
      return 'Voce está com um grau de obesidade muito elevado! O tratamento desse quadro é dado através de mudanças no estilo de vida, associado ao tratamento multiprofissional com nutricionista, psicólogo e médico.';
    } else if (_imc >= 30) {
      return 'Você está obeso! O tratamento deve ser realizado através de dieta apropriada com avaliação médica em conjunto com a prática de exercícios';
    } else if (_imc >= 25) {
      return 'Você está levemente acima do peso ideal! Manter hábitos alimentares saudáveis e praticar atividades físicas são bons aliados contra o excesso de peso.';
    } else if (_imc >= 18.5) {
      return 'Você está dentro da faixa de peso ideal! Para a manutenção  do seu peso é importante manter uma dieta balanceada e praticar exercícios regularmente.';
    } else {
      return 'Você está abaixo da faixa de peso ideal! Isso pode ter relação com alguma doença que causa emagrecimento ou sua nutrição não está boa o suficiente.';
    }
  }
}
