import 'package:flutter/material.dart';
import 'constants.dart';
import 'dart:developer';

class RoundIconButton extends StatelessWidget {
  RoundIconButton({required this.icon,required this.onPress}){}
  var val;
  IconData icon;
  TimelineSyncFunction onPress;


  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPress,
      child: Icon(icon),
      fillColor: Color(0xFF4c4F5E),
      constraints:  BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      shape: CircleBorder(),
    );
  }
}