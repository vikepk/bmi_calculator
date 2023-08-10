

import 'package:flutter/material.dart';
import 'constants.dart';


class Iconcontent extends StatelessWidget {
  final IconData icon;
  final String content;
  Iconcontent({required this.icon,required this.content}){}

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment:MainAxisAlignment.center,children: [
      Icon(icon,size: 80,),
      SizedBox(height: 15,),
      Text(content,style:klabelstyle ,)
    ],);
  }
}