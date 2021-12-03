
// ignore_for_file: file_names
import 'package:flutter/material.dart';


String inkWellString = '';

class MyInkWell extends StatefulWidget {

  const MyInkWell({
    
    Key? key,
  }) : super(key: key);

  @override
  State<MyInkWell> createState() => _MyInkWellState();
}

class _MyInkWellState extends State<MyInkWell> {
  void inkWellString1(){
    setState(() {
      inkWellString=='inkWellString'?inkWellString='':inkWellString='inkWellString';
    });
  }
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: inkWellString1,
      child: Container(
        alignment: Alignment.center,
        width: 100,
        height: 40,
        color: Colors.blue,
        child:  Text(
          inkWellString,
          style:
               TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
