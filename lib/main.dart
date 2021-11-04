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
       child: Column(
         children: <Widget>[
           SizedBox(
             height: 100,
             width: 10,
           ),
           SizedBox(
             height: 100,
           ),//결과창 표시 예정
           SizedBox(
             height: 100,
             width: 10,
           ),
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceAround,
               children: <Widget>[
                 Container(
                   height: 60,
                   width: 60,
                   color: Colors.white70,
                    child:InkWell(
                      highlightColor: Colors.white,
                      child: Text('AC',style: TextStyle(fontSize: 40)),
                      onTap: (){
                        setState(() {
                        });
                    },
                    ),
                 ),
                 Container(
                   height: 60,
                   width: 60,
                   color: Colors.white70,
                   child:InkWell(
                     highlightColor: Colors.white,
                     child: Text('+/-',style: TextStyle(fontSize: 40)),
                     onTap: (){
                       setState(() {
                       });
                     },
                   ),
                 ),
                 Container(
                   height: 60,
                   width: 60,
                   color: Colors.white70,
                   child:InkWell(
                     highlightColor: Colors.white,
                     child: Text('%',style: TextStyle(fontSize: 55)),
                     onTap: (){
                       setState(() {
                       });
                     },
                   ),
                 ),
                 Container(
                   height: 60,
                   width: 60,
                   color: Colors.orangeAccent,
                   child:InkWell(
                     highlightColor: Colors.white,
                     child: Text('÷',style: TextStyle(fontSize: 50)),
                     onTap: (){
                       setState(() {
                       });
                     },
                   ),
                 ),
               ],
           ),//ac,+/-,%,÷
           SizedBox(
               height: 20,
             ),
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceAround,
             children: <Widget>[
               Container(
                 height: 60,
                 width: 60,
                 color: Colors.white10,
                 child:InkWell(
                   highlightColor: Colors.white,
                   child: Text('7',style: TextStyle(fontSize: 50)),
                   onTap: (){
                     setState(() {
                     });
                   },
                 ),
               ),
               Container(
                 height: 60,
                 width: 60,
                 color: Colors.white10,
                 child:InkWell(
                   highlightColor: Colors.white,
                   child: Text('8',style: TextStyle(fontSize: 50)),
                   onTap: (){
                     setState(() {
                     });
                   },
                 ),
               ),
               Container(
                 height: 60,
                 width: 60,
                 color: Colors.white10,
                 child:InkWell(
                   highlightColor: Colors.white,
                   child: Text('9',style: TextStyle(fontSize: 50)),
                   onTap: (){
                     setState(() {
                     });
                   },
                 ),
               ),
               Container(
                 height: 60,
                 width: 60,
                 color: Colors.orangeAccent,
                 child:InkWell(
                   highlightColor: Colors.white,
                   child: Text('×',style: TextStyle(fontSize: 60)),
                   onTap: (){
                     setState(() {
                     });
                   },
                 ),
               ),
             ],
             ),//7,8,9,x
           SizedBox(
             height: 20,
           ),
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceAround,
             children: <Widget>[
               Container(
                 height: 60,
                 width: 60,
                 color: Colors.white10,
                 child:InkWell(
                   highlightColor: Colors.white,
                   child: Text('4',style: TextStyle(fontSize: 50)),
                   onTap: (){
                     setState(() {
                     });
                   },
                 ),
               ),
               Container(
                 height: 60,
                 width: 60,
                 color: Colors.white10,
                 child:InkWell(
                   highlightColor: Colors.white,
                   child: Text('5',style: TextStyle(fontSize: 50)),
                   onTap: (){
                     setState(() {
                     });
                   },
                 ),
               ),
               Container(
                 height: 60,
                 width: 60,
                 color: Colors.white10,
                 child:InkWell(
                   highlightColor: Colors.white,
                   child: Text('6',style: TextStyle(fontSize: 50)),
                   onTap: (){
                     setState(() {
                     });
                   },
                 ),
               ),
               Container(
                 height: 60,
                 width: 60,
                 color: Colors.orangeAccent,
                 child:InkWell(
                   highlightColor: Colors.white,
                   child: Text('-',style: TextStyle(fontSize: 60)),
                   onTap: (){
                     setState(() {
                     });
                   },
                 ),
               ),
             ],
           ),//4,5,6,-
           SizedBox(
             height: 20,
           ),
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceAround,
             children: <Widget>[
               Container(
                 height: 60,
                 width: 60,
                 color: Colors.white10,
                 child:InkWell(
                   highlightColor: Colors.white,
                   child: Text('1',style: TextStyle(fontSize: 50)),
                   onTap: (){
                     setState(() {
                     });
                   },
                 ),
               ),
               Container(
                 height: 60,
                 width: 60,
                 color: Colors.white10,
                 child:InkWell(
                   highlightColor: Colors.white,
                   child: Text('2',style: TextStyle(fontSize: 50)),
                   onTap: (){
                     setState(() {
                     });
                   },
                 ),
               ),
               Container(
                 height: 60,
                 width: 60,
                 color: Colors.white10,
                 child:InkWell(
                   highlightColor: Colors.white,
                   child: Text('3',style: TextStyle(fontSize: 50)),
                   onTap: (){
                     setState(() {
                     });
                   },
                 ),
               ),
               Container(
                 height: 60,
                 width: 60,
                 color: Colors.orangeAccent,
                 child:InkWell(
                   highlightColor: Colors.white,
                   child: Text('+',style: TextStyle(fontSize: 60)),
                   onTap: (){
                     setState(() {
                     });
                   },
                 ),
               ),
             ],
           ),//1,2,3,+
           SizedBox(
             height: 20,
           ),
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceAround,
             children: <Widget>[
               Container(
                 height: 60,
                 width: 60,
                 color: Colors.white10,
                 child:InkWell(
                   highlightColor: Colors.white,
                   child: Text('0',style: TextStyle(fontSize: 50)),
                   onTap: (){
                     setState(() {
                     });
                   },
                 ),
               ),

               Container(
                 height: 60,
                 width: 60,
                 color: Colors.white10,
                 child:InkWell(
                   highlightColor: Colors.white,
                   child: Text('.',style: TextStyle(fontSize: 50)),
                   onTap: (){
                     setState(() {
                     });
                   },
                 ),
               ),
               Container(
                 height: 60,
                 width: 60,
                 color: Colors.orangeAccent,
                 child:InkWell(
                   highlightColor: Colors.white,
                   child: Text('=',style: TextStyle(fontSize: 60)),
                   onTap: (){
                     setState(() {
                     });
                   },
                 ),
               ),
             ],
           ), //0,.,=
         ],
       ),
      ),



    );

  }
}



