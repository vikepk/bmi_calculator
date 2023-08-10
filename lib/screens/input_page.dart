import 'dart:developer';

import'package:flutter/material.dart';
import '../main.dart';
import '../components/icon_content.dart';
import '../components/reuseable_card.dart';
import '../components/constants.dart';
import'results_page.dart';
import '../calculator_brain.dart';
import '../components/bottom_button.dart';
import '../components/round_icon.dart';



enum Gendertype{male,female}
enum func{add,sub}


class InputPage extends StatefulWidget {
  const InputPage({super.key});
  @override
  State<InputPage> createState() => _InputPageState();
}
var selectedgender;
int height=180;
double weight=50;
int age=20;

class _InputPageState extends State<InputPage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold( appBar: AppBar(

          title: Text("BMI Calculator"),
        ),

        body:Column(
            crossAxisAlignment:CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                Expanded(
                  child: Reuseablecard(onPress:() async {setState((){
                    selectedgender=Gendertype.male;});

                  },
                    coluor:selectedgender==Gendertype.male ? kactivecol: kinactivecol,cardchild:Iconcontent(icon: Icons.male,content: "Male",),),
                ),
                Expanded(child: Reuseablecard( onPress:()async{setState((){
                  selectedgender=Gendertype.female;});

                },coluor:selectedgender==Gendertype.female ? kactivecol: kinactivecol,cardchild:Iconcontent(icon: Icons.female,content: "Female",),),),

              ],
            ),
            Expanded(child:   Container(
              margin: EdgeInsets.all(15),
              decoration: BoxDecoration(color:kactivecol,borderRadius: BorderRadius.circular(10),
             ),
              child:Column(mainAxisAlignment: MainAxisAlignment.center,children: [
                Text("HEIGHT",style: klabelstyle,),
                Row(mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment:CrossAxisAlignment.baseline,textBaseline:TextBaseline.alphabetic,children: [
                  Text(height.toString(),style: klabelslider,),
                  Text("cm",style:klabelstyle),
                ],),
                SliderTheme(data:SliderTheme.of(context).copyWith(
                  activeTrackColor:Colors.white,
                  inactiveTrackColor:Color(0xFF8D8E98),
                  thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
                  thumbColor: Color(0xFFEB1555),
                  overlayShape: RoundSliderOverlayShape(overlayRadius: 30.0),
                  overlayColor: Color(0x29EB1555),
                ),
                  child: Slider(value: height.toDouble(),min: 120,max:220,
                      onChanged: (double newValue){
                    setState(() {
                      height=newValue.round() ;
                    });
                  }),
                )
              ],),

            ),),
            Row(

              children: [
                Expanded(
                  child: Reuseablecard(onPress:()async{},coluor:kactivecol,cardchild:Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("WEIGHT",style: klabelstyle,),
                      Text(weight.toString(),style: klabelslider,),
                      Row(
                        mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                        children: [
                        RoundIconButton(icon:Icons.remove,onPress: ()async{setState(() {
                          weight--;
                        });},),
                        RoundIconButton(icon:Icons.add,onPress: ()async{
                          setState(() {
                            weight++;
                          });
                        },),

                      ],)
                    ],

                  ),
                  ),
                ),
                Expanded(child: Reuseablecard( onPress:()async{},coluor:kactivecol,cardchild:Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("AGE",style: klabelstyle,),
                    Text(age.toString(),style: klabelslider,),
                    Row(
                      mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                      children: [
                        RoundIconButton(icon:Icons.remove,onPress: ()async{setState(() {
                          age--;
                        });},),
                        RoundIconButton(icon:Icons.add,onPress: ()async{
                          setState(() {
                            age++;
                          });
                        },),

                      ],)
                  ],

                )),)

              ],
            ),
            BottomButton(text: "CALCULATE",onPress: (){   Calculator calc=Calculator(weight: weight,height: height.toDouble());

            Navigator.push(context, MaterialPageRoute(builder:(BuildContext context)=> ResultsPage(
              bmi:calc.getbmi(),rate:calc.getrate(),result: calc.getInterpretation(),

            )));},),
          ],

        ),

        // This trailing comma makes auto-formatting nicer for build methods.
      );
    

  }

}












