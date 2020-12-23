import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CalculatorButton extends StatelessWidget {
  final String text;
  final int fillColor;
  final int textColor;
  final double textSize;
  const CalculatorButton({
    Key key,
    this.fillColor,
    this.text,
    this.textColor = 0xffffffff,
    this.textSize = 24,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
        onPressed: () {},
        backgroundColor: Color(fillColor),
      ),
    );
  }
}
