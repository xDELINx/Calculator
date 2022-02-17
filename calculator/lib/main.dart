import 'package:calculator/widgets/CalculatorButton.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Calculator());
}

class Calculator extends StatelessWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: CalculatorScreen(),
    );
  }
}

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({Key? key}) : super(key: key);

  @override
  _CalculatorScreenState createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  int firstNum = 0;
  int secondNum = 0;
  String history = "";
  String textToDisplay = "";
  String res = "";
  String operation = "";

  void btnOnClick(String number) {
    // print(number);
    if (number == "C") {
      textToDisplay = "";
      firstNum = 0;
      secondNum = 0;
      res = "";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              child: Padding(
                padding: EdgeInsets.only(right: 12.0),
                child: Text(
                  "123",
                  style: TextStyle(
                    color: Color.fromARGB(255, 197, 181, 181),
                  ),
                ),
              ),
            ),
            Container(
              child: Padding(
                padding: EdgeInsets.all(12.0),
                child: Text(
                  "123",
                  style: TextStyle(
                    fontSize: 48,
                    color: Colors.white,
                  ),
                ),
              ),
              alignment: Alignment(1.0, 1.0),
            ),
            Row(
              children: [
                CalculatorButton("AC", 0xff718571, btnOnClick),
                CalculatorButton("C", 0xff718571, btnOnClick),
                CalculatorButton("<", 0xff718571, btnOnClick),
                CalculatorButton("/", 0xff718571, btnOnClick),
              ],
            ),
            Row(
              children: [
                CalculatorButton("9", 0xff718571, btnOnClick),
                CalculatorButton("8", 0xff718571, btnOnClick),
                CalculatorButton("x", 0xff718571, btnOnClick),
                CalculatorButton("+", 0xff718571, btnOnClick),
              ],
            ),
            Row(
              children: [
                CalculatorButton("6", 0xff718571, btnOnClick),
                CalculatorButton("5", 0xff718571, btnOnClick),
                CalculatorButton("4", 0xff718571, btnOnClick),
                CalculatorButton("-", 0xff718571, btnOnClick),
              ],
            ),
            Row(
              children: [
                CalculatorButton("3", 0xff718571, btnOnClick),
                CalculatorButton("2", 0xff718571, btnOnClick),
                CalculatorButton("1", 0xff718571, btnOnClick),
                CalculatorButton("+", 0xff718571, btnOnClick),
              ],
            ),
            Row(
              children: [
                CalculatorButton("+/-", 0xff718571, btnOnClick),
                CalculatorButton("0", 0xff718571, btnOnClick),
                CalculatorButton("00", 0xff718571, btnOnClick),
                CalculatorButton("=", 0xff718571, btnOnClick),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
