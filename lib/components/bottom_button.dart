import 'dart:developer';

import 'package:flutter/material.dart';
import 'constants.dart';

class BottomButton extends StatelessWidget {
  String text;
  TimelineSyncFunction onPress;
  BottomButton({required this.text,required this.onPress}){}

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        color: Color(0xFFEB1555),
        margin: EdgeInsets.only(top: 10),
        width: double.infinity,
        height: 80,
        child: Center(child: Text(text,style:kLargebutton)),
      ),
    );
  }
}