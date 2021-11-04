import 'package:flutter/material.dart';


void main()=> runApp(Calc());

class Calc extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: null,
      body: Center(
       child: Row(
         children: <Widget>[
           SizedBox(),
           SizedBox(),
           SizedBox(),
           Column(
               children: <Widget>[]

           ),//ac,+/-,%,÷
           Column(
               children: <Widget>[]
           ),//7,8,9,x
           Column(
               children: <Widget>[]
           ),//4,5,6,-
           Column(
               children: <Widget>[]
           ),//1,2,3,+
           Column(
               children: <Widget>[]
           ), //0,.,=


         ],
       ),
      ),



    );

  }
}



