import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scientific_calculator/widgets/calculator_button.dart';
import 'package:math_expressions/math_expressions.dart';
import 'dart:ui';

void main() => runApp(CalculatorApp());

class CalculatorApp extends StatefulWidget {
  @override
  _CalculatorAppState createState() => _CalculatorAppState();
}

class _CalculatorAppState extends State<CalculatorApp> {
  String _history = '';
  String _expression = '';

  void numberClicked(String text) {
    setState(
      () {
        _expression += text;
      },
    );
  }

  void allClear(String text) {
    setState(
      () {
        _history = '';
        _expression = '';
      },
    );
  }

  void clear(String text) {
    setState(
      () {
        _expression = '';
      },
    );
  }

  void evaluate(String text) {
    Parser p = Parser();
    Expression exp = p.parse(_expression);
    ContextModel cm = ContextModel();
    double eval = exp.evaluate(EvaluationType.REAL, cm);
    setState(
      () {
        _history = _expression;
        _expression = eval.toString();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      title: 'Calculator',
      home: Scaffold(
        // backgroundColor: Color(0xff4f5463),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  padding: EdgeInsets.all(12),
                  child: Text(
                    _history,
                    style: GoogleFonts.rubik(
                      textStyle: TextStyle(
                        fontSize: 30,
                        color: Color(0xff54b461),
                      ),
                    ),
                  ),
                  alignment: Alignment(1, 1),
                ),
                Container(
                  padding: EdgeInsets.all(12),
                  child: Text(
                    _expression,
                    style: GoogleFonts.rubik(
                      textStyle: TextStyle(
                        fontSize: 60,
                      ),
                    ),
                  ),
                  alignment: Alignment(1, 1),
                ),
                SizedBox(
                  height: 40,
                ),
                Divider(
                  color: Color(0xffffffff),
                  height: 20,
                  thickness: 1,
                  indent: 10,
                  endIndent: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    CalculatorButton(
                      text: 'AC',
                      fillColor: 0xff54b461,
                      callBack: allClear,
                    ),
                    CalculatorButton(
                      text: 'C',
                      fillColor: 0xff54b461,
                      callBack: clear,
                    ),
                    CalculatorButton(
                      text: '%',
                      fillColor: 0xff54b461,
                      callBack: numberClicked,
                    ),
                    CalculatorButton(
                      text: '/',
                      fillColor: 0xff54b461,
                      callBack: numberClicked,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    CalculatorButton(
                      text: '7',
                      fillColor: 0xffffffff,
                      textColor: 0xff4f5463,
                      callBack: numberClicked,
                    ),
                    CalculatorButton(
                      text: '8',
                      fillColor: 0xffffffff,
                      textColor: 0xff4f5463,
                      callBack: numberClicked,
                    ),
                    CalculatorButton(
                      text: '9',
                      fillColor: 0xffffffff,
                      textColor: 0xff4f5463,
                      callBack: numberClicked,
                    ),
                    CalculatorButton(
                      text: '*',
                      fillColor: 0xff54b461,
                      callBack: numberClicked,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    CalculatorButton(
                      text: '4',
                      fillColor: 0xffffffff,
                      textColor: 0xff4f5463,
                      callBack: numberClicked,
                    ),
                    CalculatorButton(
                      text: '5',
                      fillColor: 0xffffffff,
                      textColor: 0xff4f5463,
                      callBack: numberClicked,
                    ),
                    CalculatorButton(
                      text: '6',
                      fillColor: 0xffffffff,
                      textColor: 0xff4f5463,
                      callBack: numberClicked,
                    ),
                    CalculatorButton(
                      text: '-',
                      fillColor: 0xff54b461,
                      callBack: numberClicked,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    CalculatorButton(
                      text: '1',
                      fillColor: 0xffffffff,
                      textColor: 0xff4f5463,
                      callBack: numberClicked,
                    ),
                    CalculatorButton(
                      text: '2',
                      fillColor: 0xffffffff,
                      textColor: 0xff4f5463,
                      callBack: numberClicked,
                    ),
                    CalculatorButton(
                      text: '3',
                      fillColor: 0xffffffff,
                      textColor: 0xff4f5463,
                      callBack: numberClicked,
                    ),
                    CalculatorButton(
                      text: '+',
                      fillColor: 0xff54b461,
                      callBack: numberClicked,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    CalculatorButton(
                      text: '>>',
                      fillColor: 0xffffffff,
                      textColor: 0xff4f5463,
                    ),
                    CalculatorButton(
                      text: '0',
                      fillColor: 0xffffffff,
                      textColor: 0xff4f5463,
                      callBack: numberClicked,
                    ),
                    CalculatorButton(
                      text: '.',
                      fillColor: 0xffffffff,
                      textColor: 0xff4f5463,
                      callBack: numberClicked,
                    ),
                    CalculatorButton(
                      text: '=',
                      fillColor: 0xff54b461,
                      callBack: evaluate,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
