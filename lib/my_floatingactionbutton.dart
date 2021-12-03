

import 'package:flutter/material.dart';

String myFloatingActionButton='';

class MyFloatingActionButton extends StatefulWidget {
  const MyFloatingActionButton({
    Key? key,
  }) : super(key: key);

  @override
  State<MyFloatingActionButton> createState() => _MyFloatingActionButtonState();
}

class _MyFloatingActionButtonState extends State<MyFloatingActionButton> {
  void myFloatingActionButtonFunc(){
    setState(() {
      myFloatingActionButton==''?myFloatingActionButton='MyFloatingActionButton':myFloatingActionButton='';
    });
  }
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FloatingActionButton(
          onPressed: myFloatingActionButtonFunc,
          child: const Text('F.A.B'),
        ),
         Text(myFloatingActionButton)
      ],
    );
  }
}