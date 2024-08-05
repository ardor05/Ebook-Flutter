import 'package:flutter/material.dart';
import 'package:ebook/first.dart';



void main() async {

  runApp(ebook());
}


class ebook extends StatelessWidget {
  const ebook({super.key});

  @override


  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Libry',
      debugShowCheckedModeBanner: false,
      home: LoginOrRegisterPage(),
      //home: Profile(),
    );
  }
}