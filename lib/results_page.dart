import 'package:flutter/material.dart';
import 'inputPage.dart';
import 'reusable_card.dart';
import 'calculator_brain.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage(
      {required this.bmi, required this.interpretation, required this.result});

  final String result;
  final String bmi;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Container(
                child: Text(
                  "your Result",
                  style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: Container(
                margin: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Color(0xFF1D1E33),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      bmi,
                      style: TextStyle(
                          fontSize: 22,
                          color: Color(0xFF24D876),
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      result,
                      style:
                          TextStyle(fontSize: 80, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      interpretation,
                      style: TextStyle(
                        fontSize: 22,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
                child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                padding: EdgeInsets.only(bottom: 20),
                child: Center(
                  child: Text(
                    "RECALCULATE",
                    style: TextStyle(fontSize: 40),
                  ),
                ),
                // height: 80.0,
                width: double.infinity,
                color: Color(0xFFEB1555),
                margin: EdgeInsets.only(top: 10),
                // child: Text('Last Container'),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
