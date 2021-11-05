import 'package:flutter/material.dart';

class CalcButton3 extends StatelessWidget {
  // const CalcButton({Key? key}) : super(key: key);
  final String pad;
  final Function callback;

  const CalcButton3({
    required this.pad,
    required this.callback,

  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white24,
          borderRadius: BorderRadius.circular(35)
      ),
      height: 70,
      width: 70,
      child:InkWell(
          highlightColor: Colors.white,
          borderRadius: BorderRadius.circular(35),
          child: Center(
            child: Text(
              pad,
              style: TextStyle(fontSize: 35,color: Colors.white),
            ),
          ),
        onTap: () => callback(pad),

      ),
    );
  }
}
