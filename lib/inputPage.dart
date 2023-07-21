// TODO Implement this library.
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';

const bottomContainerHeight = 80.0;
const reusableCardColor = Color(0xFF1D1E33);
const inactiveCardColor = Color(0xFF111328);
const bottomContainerColor = Color(0xFFEB1555);

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColor = inactiveCardColor;
  Color femaleCardColor = inactiveCardColor;

  int height = 180;
  int weight = 30;
  int age = 10;

  void updateCardColor(Gender gender) {
    // gender = 1 for male , 2 for female
    if (gender == Gender.male) {
      if (maleCardColor == inactiveCardColor) {
        femaleCardColor = inactiveCardColor;
        maleCardColor = reusableCardColor;
      } else {
        maleCardColor = inactiveCardColor;
      }
    } else {
      if (femaleCardColor == inactiveCardColor) {
        maleCardColor = inactiveCardColor;
        femaleCardColor = reusableCardColor;
      } else {
        femaleCardColor = inactiveCardColor;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('BMI CALCULATOR')),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateCardColor(Gender.male);
                      });
                    },
                    child: ReusableCard(
                      maleCardColor,
                      IconContent(FontAwesomeIcons.mars, 'Male'),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateCardColor(Gender.female);
                      });
                    },
                    child: ReusableCard(
                      femaleCardColor,
                      IconContent(FontAwesomeIcons.venus, 'Female'),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
              child: Container(
            // width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'HEIGHT',
                  style: TextStyle(
                    fontSize: 18,
                    color: Color(0xFF8D8E98),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    Text(
                      height.toString(),
                      style:
                          TextStyle(fontSize: 50, fontWeight: FontWeight.w900),
                    ),
                    Text(
                      ' cm',
                      style: TextStyle(
                        fontSize: 18,
                        color: Color(0xFF8D8E98),
                      ),
                    ),
                  ],
                ),
                SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                    thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15),
                    overlayShape: RoundSliderOverlayShape(overlayRadius: 30),
                  ),
                  child: Slider(
                    value: height.toDouble(),
                    min: 120.0,
                    max: 220.0,
                    activeColor: Color(0xFFEB1555),
                    inactiveColor: Color(0xFF8D8E98),
                    onChanged: (double newVal) {
                      setState(() {
                        height = newVal.round();
                        // print(newVal);
                      });
                    },
                  ),
                )
              ],
            ),
            margin: EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: reusableCardColor,
              borderRadius: BorderRadius.circular(10.0),
            ),
          )),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    reusableCardColor,
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'WEIGHT',
                          style: TextStyle(
                            fontSize: 18,
                            color: Color(0xFF8D8E98),
                          ),
                        ),
                        Text(
                          weight.toString(),
                          style: TextStyle(
                              fontSize: 50, fontWeight: FontWeight.w900),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    reusableCardColor,
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'AGE',
                          style: TextStyle(
                            fontSize: 18,
                            color: Color(0xFF8D8E98),
                          ),
                        ),
                        Text(
                          age.toString(),
                          style: TextStyle(
                              fontSize: 50, fontWeight: FontWeight.w900),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: bottomContainerHeight,
            width: double.infinity,
            color: bottomContainerColor,
            margin: EdgeInsets.only(top: 10),
            // child: Text('Last Container'),
          )
        ],
      ),
    );
  }
}
