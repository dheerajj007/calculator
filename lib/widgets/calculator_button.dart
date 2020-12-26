import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CalculatorButton extends StatelessWidget {
  final String text;
  final int fillColor;
  final int textColor;
  final double textSize;
  final Function callBack;
  const CalculatorButton({
    Key key,
    this.fillColor,
    this.text,
    this.textColor = 0xffffffff,
    this.textSize = 28,
    this.callBack,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(1),
      height: 85.0,
      width: 90.0,
      child: FloatingActionButton(
        child: Text(
          text,
          style: GoogleFonts.rubik(
            textStyle: TextStyle(
              fontSize: textSize,
              color: Color(textColor),
            ),
          ),
        ),
        onPressed: () {
          callBack(text);
        },
        backgroundColor: Color(fillColor),
      ),
    );
  }
}
