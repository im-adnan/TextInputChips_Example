import 'package:flutter/material.dart';
import 'filterchip.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Chips',
      theme: ThemeData(
        //primaryColor: new Color(0xffe91e63),
        //primaryColor: new Color(0xffffc107),
        primaryColor: const Color(0xff6200ee),
        //primaryColor: new Color(0xffF2601F),
      ),
      //home: InputChipDisplay(),//inputChip
      //home: ChoiceChipDisplay(),//choicechip
      home: const FilterChipDisplay(), //filterchip
      //home: ActionChipDisplay(),//actionchip
    );
  }
}
