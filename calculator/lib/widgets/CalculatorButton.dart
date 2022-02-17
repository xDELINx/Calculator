import 'package:flutter/material.dart';

class CalculatorButton extends StatelessWidget {
  final String number;
  final int fillColor;
  final Function callback;

  const CalculatorButton(
    this.number,
    this.fillColor,
    this.callback,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      child: SizedBox(
        width: 70,
        height: 70,
        child: FlatButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.0),
          ),
          child: Text(
            number,
            style: TextStyle(
              fontSize: 24,
            ),
          ),
          onPressed: () => callback(number),
          color: Color(fillColor),
        ),
      ),
    );
  }
}
