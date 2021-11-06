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
     num op1 = 0; // 제1 피연산자
     num op2 = 0;// 제2 피연산자
     String decimal = '.'; // 소숫점
     String displaytext = '0'; //디스플레이
     String res = '0'; // 결과
     String operator = '';//연산자
     String AnAC = 'AC';// AC/C
     void btntap(String btnVal){
      print(btnVal);
      if (btnVal == 'AC'){
        displaytext = '';
        op1 = 0;
        op2 = 0;
        res = '0';
      }else if(btnVal == 'C' ){
        displaytext ='';
        //op1 = 0;
        op2 =0;
        res = '0';
      }else if(btnVal == '%'){
        op1 = int.parse(displaytext);
        res = (op1 / 100).toString();
      }else if(btnVal == '+/-'){
        if( displaytext[0] != '-'){
          res = '-'+displaytext;
        } else {
          res = displaytext.substring(1);
        }
        }else if(btnVal == '+' ||
          btnVal == '-' ||
          btnVal == '×' ||
          btnVal == '÷'){
        op1 = int.parse(displaytext);
        res = '';
        operator = btnVal;
      }else if (btnVal == '='){
        op2 = int.parse(displaytext);
        if(operator == '+'){
          res = (op1 + op2).toString();
        }
        if(operator == '-'){
          res = (op1 - op2).toString();
        }
        if(operator == '×'){
          res = (op1 * op2).toString();
        }
        if(operator == '÷'){
          res = (op1 / op2).toString();

        }
      } else {
        res = int.parse(displaytext + btnVal).toString();
      }

      setState(() {
        displaytext = res;
      });
      if (displaytext == '0'){
        AnAC = 'AC';
      }else if(res != '0'){
        AnAC = 'C';
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
             height: 160,
             width: 10,
           ),
           Container(
             alignment: Alignment(0.8,0.8),
             height: 160,
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
                 CalcButton(pad: AnAC, callback: btntap,),
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





