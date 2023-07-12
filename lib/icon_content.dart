import 'package:flutter/material.dart';

const txtLabelStyle = TextStyle(
  fontSize: 18,
  color: Color(0xFF8D8E98),
);

class IconContent extends StatelessWidget {
  final String txt;
  final IconData ic;
  IconContent(this.ic, this.txt);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          ic,
          size: 80,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          txt,
          style: txtLabelStyle,
        ),
      ],
    );
  }
}
