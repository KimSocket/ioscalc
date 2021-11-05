import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:ioscalc/widget/calcbutton2.dart';
import './widget/calcbutton.dart';
import 'package:ioscalc/widget/calcbutton3.dart';
import 'package:ioscalc/widget/calcbutton4.dart';


void main()=> runApp(Calc());




class Calc extends StatelessWidget{



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: new ThemeData(scaffoldBackgroundColor: const Color(0x00000ff)),
      home: Calcmain(),

    );
  }
}

class Calcmain extends StatefulWidget {
  const Calcmain({Key? key}) : super(key: key);

  @override
  _CalcmainState createState() => _CalcmainState();

}


class _CalcmainState extends State<Calcmain> {
    late int firstNum;
    late int secondNum;
    late String displaytext = '0';
    late String res = '0';
    late String operation;
    void btntap(String btnVal){


      print(btnVal);
      if (btnVal == 'AC'){
        displaytext = '';
        firstNum = 0;
        secondNum = 0;
        res = '';
      }else if(btnVal == 'C' ){
        displaytext ='';
        firstNum = 0;
        secondNum =0;
        res = '';
      }else if(btnVal == '%'){
      }else if(btnVal == '+' ||
          btnVal == '-' ||
          btnVal == '×' ||
          btnVal == '÷'){
        firstNum = int.parse(displaytext);
        res = '';
        operation = btnVal;
      }else if (btnVal == '='){
        secondNum = int.parse(displaytext);
        if(operation == '+'){
          res = (firstNum + secondNum).toString();
        }
        if(operation == '-'){
          res = (firstNum - secondNum).toString();
        }
        if(operation == '×'){
          res = (firstNum * secondNum).toString();
        }
        if(operation == '÷'){
          res = (firstNum / secondNum).toString();
        } else{
          res = int.parse(displaytext + btnVal).toString();
        }
        setState(() {
          displaytext = res;
        });
      }


    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(



      appBar: null,
      body: Center(
       child: Column(
         children: <Widget>[

           SizedBox(
             height: 140,
             width: 10,
           ),
           Container(
             alignment: Alignment(0.8,0.8),
             height: 140,
              child: Text(
                displaytext,
                style: TextStyle(fontSize: 70,color: Colors.white),
              )

           ),//결과창
           SizedBox(
             height: 10,
             width: 10,
           ),
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceAround,
               children: <Widget>[

                 CalcButton(pad: 'AC', callback: btntap,),
                 CalcButton(pad: '+/-', callback: btntap,),
                 CalcButton(pad: '%', callback: btntap,),
                 CalcButton2(pad: '÷', callback: btntap,),
               ],
           ),//ac,+/-,%,÷
           SizedBox(
               height: 10,
             ),
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceAround,
             children: <Widget>[
               CalcButton3(pad: '7',callback: btntap,),
               CalcButton3(pad: '8',callback: btntap,),
               CalcButton3(pad: '9',callback: btntap,),
               CalcButton2(pad: '×', callback: btntap,),
             ],
             ),//7,8,9,x
           SizedBox(
             height: 10,
           ),
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceAround,
             children: <Widget>[
               CalcButton3(pad: '4',callback: btntap,),
               CalcButton3(pad: '5',callback: btntap,),
               CalcButton3(pad: '6',callback: btntap,),
               CalcButton2(pad: '-', callback: btntap,),
             ],
           ),//4,5,6,-
           SizedBox(
             height: 10,
           ),
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceAround,
             children: <Widget>[
               CalcButton3(pad: '1',callback: btntap,),
               CalcButton3(pad: '2',callback: btntap,),
               CalcButton3(pad: '3',callback: btntap,),
               CalcButton2(pad: '+', callback: btntap,),

             ],
           ),//1,2,3,+
           SizedBox(
             height: 10,
           ),
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceAround,
             children: <Widget>[
               CalcButton4(pad: '0',callback: btntap,),
               CalcButton3(pad: '.',callback: btntap,),
               CalcButton2(pad: '=', callback: btntap,),
             ],
           ), //0,.,=
         ],
       ),
      ),



    );
  }
}




