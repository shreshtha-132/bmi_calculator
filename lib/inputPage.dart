// TODO Implement this library.
import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('BMI CALCULATOR')),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(Color(0xFF1D1E33)),
                ),
                Expanded(
                  child: ReusableCard(Color(0xFF1D1E33)),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(Color(0xFF1D1E33)),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(Color(0xFF1D1E33)),
                ),
                Expanded(
                  child: ReusableCard(Color(0xFF1D1E33)),
                ),
              ],
            ),
          ),
          Container(
            height: 60,
            width: double.infinity,
            color: Color(0xFFEB1555),
            margin: EdgeInsets.only(top: 10),
            // child: Text('Last Container'),
          )
        ],
      ),
    );
  }
}

class ReusableCard extends StatelessWidget {
  late Color colour;
  ReusableCard(this.colour);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
