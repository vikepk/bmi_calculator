

import 'dart:developer';


import 'package:flutter/material.dart';


class Reuseablecard extends StatelessWidget {
  Color coluor;
  Widget cardchild;
  TimelineAsyncFunction  onPress;

  Reuseablecard({required this.coluor, required this.cardchild,required this.onPress}) {
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onPress,
      child: Container(

        child: cardchild,
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: coluor, borderRadius: BorderRadius.circular(10),),
        height: 150,
        width: 150,

      ),
    );
  }


}