import 'package:flutter/material.dart';
String outlineButtonString='';

class MyOutlineButton extends StatefulWidget {
  const MyOutlineButton({ Key? key }) : super(key: key);

  @override
  _MyOutlineButtonState createState() => _MyOutlineButtonState();
}

class _MyOutlineButtonState extends State<MyOutlineButton> {
  void outlineButtonFunc(){
    setState(() {
      outlineButtonString==''?outlineButtonString='OutlineButtonString':outlineButtonString='';
    });
  }
  @override
  Widget build(BuildContext context) {
    return OutlineButton(
            onPressed: outlineButtonFunc,
            child: Text(outlineButtonString),
            color: Colors.blue,
          );
  }
}