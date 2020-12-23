import 'package:flutter/material.dart';
import 'package:scientific_calculator/widgets/calculator_button.dart';

void main() => runApp(CalculatorApp());

class CalculatorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator',
      home: Scaffold(
        backgroundColor: Color(0xff283637),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  CalculatorButton(
                    text: 'AC',
                    fillColor: 0xff6c807f,
                  ),
                  CalculatorButton(
                    text: 'C',
                    fillColor: 0xff6c807f,
                  ),
                  CalculatorButton(
                    text: '%',
                    fillColor: 0xffffffff,
                    textColor: 0xff6c807f,
                  ),
                  CalculatorButton(
                    text: '/',
                    fillColor: 0xffffffff,
                    textColor: 0xff6c807f,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  CalculatorButton(
                    text: 'AC',
                    fillColor: 0xff6c807f,
                  ),
                  CalculatorButton(
                    text: 'C',
                    fillColor: 0xff6c807f,
                  ),
                  CalculatorButton(
                    text: '%',
                    fillColor: 0xffffffff,
                    textColor: 0xff6c807f,
                  ),
                  CalculatorButton(
                    text: '/',
                    fillColor: 0xffffffff,
                    textColor: 0xff6c807f,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  CalculatorButton(
                    text: 'AC',
                    fillColor: 0xff6c807f,
                  ),
                  CalculatorButton(
                    text: 'C',
                    fillColor: 0xff6c807f,
                  ),
                  CalculatorButton(
                    text: '%',
                    fillColor: 0xffffffff,
                    textColor: 0xff6c807f,
                  ),
                  CalculatorButton(
                    text: '/',
                    fillColor: 0xffffffff,
                    textColor: 0xff6c807f,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  CalculatorButton(
                    text: 'AC',
                    fillColor: 0xff6c807f,
                  ),
                  CalculatorButton(
                    text: 'C',
                    fillColor: 0xff6c807f,
                  ),
                  CalculatorButton(
                    text: '%',
                    fillColor: 0xffffffff,
                    textColor: 0xff6c807f,
                  ),
                  CalculatorButton(
                    text: '/',
                    fillColor: 0xffffffff,
                    textColor: 0xff6c807f,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  CalculatorButton(
                    text: 'AC',
                    fillColor: 0xff6c807f,
                  ),
                  CalculatorButton(
                    text: 'C',
                    fillColor: 0xff6c807f,
                  ),
                  CalculatorButton(
                    text: '%',
                    fillColor: 0xffffffff,
                    textColor: 0xff6c807f,
                  ),
                  CalculatorButton(
                    text: '/',
                    fillColor: 0xffffffff,
                    textColor: 0xff6c807f,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
