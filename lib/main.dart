import 'package:dz_borders/my_outlinebutton.dart';
import 'package:flutter/material.dart';

import 'myInkwellwidget.dart';
import 'my_Iconbutton.dart';
import 'my_flatbutton.dart';
import 'my_floatingactionbutton.dart';
import 'my_raisedbutton.dart';
import 'oppup_menu_button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Button(),
    );
  }
}

class Button extends StatefulWidget {
  const Button({Key? key}) : super(key: key);

  @override
  _BordersAppState createState() => _BordersAppState();
}

String popupMenuButton = '';
String dropdownString = '';
String dropdownValue = 'Two';

class _BordersAppState extends State<Button> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title:  const Text('Click on the  buttons!'),
        backgroundColor: Colors.black,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          
          const MyFlatcButton(),
          const MyRaisedButton(),
          const MyFloatingActionButton(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              DropdownButton<String>(
                value: dropdownValue,
                icon: const Icon(
                  Icons.arrow_downward,
                ),
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
                borderRadius: BorderRadius.all(Radius.circular(10)),
                dropdownColor: Colors.grey,
                underline: Container(
                  height: 2,
                  color: Colors.blue,
                ),
                onChanged: (String? newValue) {
                  setState(() {
                    dropdownValue = newValue!;
                    dropdownString == ''
                        ? dropdownString = 'dropdownString'
                        : dropdownString = '';
                  });
                },
                items: <String>['One', 'Two', 'Free', 'Four']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
              Text(dropdownString)
            ],
          ),
          const MyIconButton(),
          const MyInkWell(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              PopupMenuButton<ListForPopupMenuButton>(
                onSelected: (ListForPopupMenuButton result) {
                  setState(() {
                    popupMenuButton == ''
                        ? popupMenuButton = 'popupMenuButton'
                        : popupMenuButton = '';
                  });
                },
                itemBuilder: (BuildContext context) =>
                    <PopupMenuEntry<ListForPopupMenuButton>>[
                  const PopupMenuItem<ListForPopupMenuButton>(
                    value: ListForPopupMenuButton.setting,
                    child: Text('Вывести название кнопки'),
                  ),
                ],
              ),
              Text(popupMenuButton)
            ],
          ),
          const MyOutlineButton(),
        ],
      ),
    );
  }
}
