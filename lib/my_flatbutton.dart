import 'package:flutter/material.dart';

String myFlatcButton='';

class MyFlatcButton extends StatefulWidget {

  const MyFlatcButton({
    Key? key,
  }) : super(key: key);

  @override
  State<MyFlatcButton> createState() => _MyFlatcButtonState();
}

class _MyFlatcButtonState extends State<MyFlatcButton> {
  void myFlatcButtonFunc(){
    setState(() {
      myFlatcButton==''?myFlatcButton='myFlatcButton':myFlatcButton='';
    });
  }
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: myFlatcButtonFunc,
      color: Colors.blue,
      child:  Text(myFlatcButton),
    );
  }
}