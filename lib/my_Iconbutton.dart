// ignore_for_file: file_names

import 'package:flutter/material.dart';

class MyIconButton extends StatefulWidget {
  const MyIconButton({
    Key? key,
  }) : super(key: key);

  @override
  State<MyIconButton> createState() => _MyIconButtonState();
}
String iconButtonString='';
class _MyIconButtonState extends State<MyIconButton> {
  void iconButton(){
    setState(() {
      iconButtonString=='IconButtonString'?iconButtonString='':iconButtonString='IconButtonString';
    });
  }
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          onPressed: iconButton,
          icon: const Icon(
            Icons.circle_rounded,
            color: Colors.red,
          ),
          iconSize: 50,
        ),
        Text(iconButtonString)
      ],
    );
  }
}