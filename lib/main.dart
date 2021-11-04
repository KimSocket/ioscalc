import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

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
      body: Column(
        children: [
          Row(
            children: [
            SizedBox(
              height: 200,
            )
        ]
          ), //제 1 여백
          Row(
            children: [
            ],
            
          ),//텍스트 박스 넣을 예정
          Row( 
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Material(
                color: Colors.white60,
                borderRadius: BorderRadius.circular(80),
                child: InkWell(
                 onTap: (){
                   setState((){

                      });

                 },
                 child: Text('C',
                 style: TextStyle(fontSize: 50,color: Colors.black),
                 ),

                ),
              ),

              Material(
                color: Colors.white60,
                child: InkWell(
                  borderRadius: BorderRadius.circular(25),
                  onTap: (){
                    setState((){

                    });

                  },
                  child: Text('+/-',
                    style: TextStyle(fontSize: 50,color: Colors.black),
                  ),
                ),
              ),
              Material(
                color: Colors.white60,
                child: InkWell(
                  onTap: (){
                    setState((){

                    });

                  },
                  child: Text('%',
                    style: TextStyle(fontSize: 50,color: Colors.black),
                  ),
                ),
              ),
              Material(
                color: Colors.orangeAccent,
                child: InkWell(
                  onTap: (){
                    setState((){

                    });

                  },
                  child: Text('÷',
                    style: TextStyle(fontSize: 50,color: Colors.white),
                  ),
                ),
              ),

            ],
          ),// C ,+/-,%,÷
          Row( 
              children: [
                SizedBox(
                  height: 20,
                )
              ]
          ),//여백
          Row( 
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Material(
                color: Colors.white12,
                child: InkWell(
                  onTap: (){
                    setState((){

                    });

                  },
                  child: Text('7',
                    style: TextStyle(fontSize: 50,color: Colors.white),
                  ),
                ),
              ),

              Material(
                color: Colors.white12,
                child: InkWell(
                  onTap: (){
                    setState((){

                    });

                  },
                  child: Text('8',
                    style: TextStyle(fontSize: 50,color: Colors.white),
                  ),
                ),
              ),
              Material(
                color: Colors.white12,
                child: InkWell(
                  onTap: (){
                    setState((){

                    });

                  },
                  child: Text('9',
                    style: TextStyle(fontSize: 50,color: Colors.white),
                  ),
                ),
              ),
              Material(
                color: Colors.orangeAccent,
                child: InkWell(
                  onTap: (){
                    setState((){

                    });

                  },
                  child: Text('×',
                    style: TextStyle(fontSize: 50,color: Colors.white),
                  ),
                ),
              ),

            ],
          ),// 7 8 9 X
          Row( 
              children: [
                SizedBox(
                  height: 20,
                )
              ]
          ),//여백
          Row( 
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Material(
                color: Colors.white12,
                child: InkWell(
                  onTap: (){
                    setState((){

                    });

                  },
                  child: Text('4',
                    style: TextStyle(fontSize: 50,color: Colors.white),
                  ),
                ),
              ),

              Material(
                color: Colors.white12,
                child: InkWell(
                  onTap: (){
                    setState((){

                    });

                  },
                  child: Text('5',
                    style: TextStyle(fontSize: 50,color: Colors.white),
                  ),
                ),
              ),
              Material(
                color: Colors.white12,
                child: InkWell(
                  onTap: (){
                    setState((){

                    });

                  },
                  child: Text('6',
                    style: TextStyle(fontSize: 50,color: Colors.white),
                  ),
                ),
              ),
              Material(
                color: Colors.orangeAccent,
                child: InkWell(
                  onTap: (){
                    setState((){

                    });

                  },
                  child: Text('-',
                    style: TextStyle(fontSize: 50,color: Colors.white),
                  ),
                ),
              ),

            ],

          ), //4,5,6,-
          Row( 
              children: [
                SizedBox(
                  height: 20,
                )
              ]
          ),//여백
          Row( // 1 2 3 +
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Material(
                color: Colors.white12,
                child: InkWell(
                  onTap: (){
                    setState((){

                    });

                  },
                  child: Text('1',
                    style: TextStyle(fontSize: 50,color: Colors.white),
                  ),
                ),
              ),

              Material(
                color: Colors.white12,
                child: InkWell(
                  onTap: (){
                    setState((){

                    });

                  },
                  child: Text('2',
                    style: TextStyle(fontSize: 50,color: Colors.white),
                  ),
                ),
              ),
              Material(
                color: Colors.white12,
                child: InkWell(
                  onTap: (){
                    setState((){

                    });

                  },
                  child: Text('3',
                    style: TextStyle(fontSize: 50,color: Colors.white),
                  ),
                ),
              ),
              Material(
                color: Colors.orangeAccent,
                child: InkWell(
                  onTap: (){
                    setState((){

                    });

                  },
                  child: Text('+',
                    style: TextStyle(fontSize: 50,color: Colors.white),
                  ),
                ),
              ),

            ],

          ), //1,2,3,+
          Row( //여백
              children: [
                SizedBox(
                  height: 20,
                )
              ]
          ),
          Row( // 0 . =
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Material(
                color: Colors.white12,
                child: InkWell(
                  onTap: (){
                    setState((){

                    });

                  },
                  child: Text('0',
                    style: TextStyle(fontSize: 50,color: Colors.white),
                  ),
                ),
              ),

              Material(
                color: Colors.white12,
                child: InkWell(
                  onTap: (){
                    setState((){

                    });

                  },
                  child: Text('.',
                    style: TextStyle(fontSize: 50,color: Colors.white),
                  ),
                ),
              ),
              Material(
                color: Colors.orangeAccent,
                child: InkWell(
                  onTap: (){
                    setState((){

                    });

                  },
                  child: Text('=',
                    style: TextStyle(fontSize: 50,color: Colors.white),
                  ),
                ),
              ),
              
            ],

          ), //0,.,=
        ],
      ),




    );
  }
}



