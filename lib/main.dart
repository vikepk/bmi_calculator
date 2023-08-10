import 'dart:ffi';

import 'package:flutter/material.dart';
import 'screens/input_page.dart';
import 'screens/results_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,

      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0D22),
        scaffoldBackgroundColor:Color(0xFF0A0D22),
        appBarTheme: AppBarTheme(
          color:  Color(0xFF0A0D22),
        )
      ),
      initialRoute: '',
      routes: {
        '/':(context)=> InputPage(),
        //'/result':(context)=>ResultsPage(bmi:null,result: nullptr,),
      },
    );
  }
}


