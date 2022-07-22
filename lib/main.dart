import 'package:calculator_app/screens/calculatore_screen.dart';
import 'package:flutter/material.dart';


void main(){
  runApp(Calculatore());
}

class Calculatore extends StatefulWidget {
  const Calculatore({Key? key}) : super(key: key);

  @override
  State<Calculatore> createState() => _CalculatoreState();
}

class _CalculatoreState extends State<Calculatore> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: CalculatoreApp(),
    );
  }
}
