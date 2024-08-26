import 'package:flutter/material.dart';
import 'package:mvvm/view/post_screen.dart';
void main()=>runApp(const Mvvm());

class Mvvm extends StatelessWidget {
   const Mvvm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PostScreen(),
    );
  }
}
