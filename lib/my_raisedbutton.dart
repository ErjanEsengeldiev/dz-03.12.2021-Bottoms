import 'package:flutter/material.dart';

String myRaisedButton='';

class MyRaisedButton extends StatefulWidget {
  const MyRaisedButton({
    Key? key,
  }) : super(key: key);

  @override
  State<MyRaisedButton> createState() => _MyRaisedButtonState();
}

class _MyRaisedButtonState extends State<MyRaisedButton> {
  void myRaisedButtonFunc(){
    setState(() {
      myRaisedButton==''?myRaisedButton='myRaisedButton':myRaisedButton='';
    });
  }
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: myRaisedButtonFunc,
      color: Colors.brown,
      child:  Text(myRaisedButton,style: TextStyle(color: Colors.white),),
    );
  }
}