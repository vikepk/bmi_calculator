import"package:flutter/material.dart";
import '../components/constants.dart';
import '../components/reuseable_card.dart';
import 'input_page.dart';
import '../components/bottom_button.dart';


class ResultsPage extends StatelessWidget {
  String result;
  late String bmi;
  String rate;
  ResultsPage({required this.bmi,required this.rate,required this.result});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Result"),
      ),
      body: Column(
       crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
              child: Container(
              padding:EdgeInsets.only(top: 30),
              alignment: Alignment.topLeft,
                  child: Text("Your Result",
                    style: klabelresulttop,))
          ),
         Expanded(
           flex: 5,
         child: Reuseablecard(
           coluor: kactivecol,
           cardchild: Column(
             mainAxisAlignment: MainAxisAlignment.start,
             children: [
               Expanded(

                   child: Padding(
                     padding: const EdgeInsets.only(top: 60),
                     child: Text(rate.toUpperCase(),style: klabelresult),
                   )),
               Expanded(child: Text(bmi.toUpperCase(),style: klabelresultnum,),),
               Expanded(child:Text(result,style: TextStyle(fontSize: 20),),),
             ],
           ),
           onPress: ()async{},
         ),

          ),
          BottomButton(text: "RECALCULATE",onPress: (){Navigator.pop(context);},),

        ],
      ),
    );
  }
}


