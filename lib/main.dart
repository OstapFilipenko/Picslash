import 'package:flutter/material.dart';
import 'package:picslash/Pages/Pictures.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyBottomNavBar(),
    );
  }
}



class MyBottomNavBar extends StatefulWidget {
  @override
  _MyBottomNavBarState createState() => _MyBottomNavBarState();
}

class _MyBottomNavBarState extends State<MyBottomNavBar> {
  int _currentIdex = 0;
  final List<Widget> _childrenOfMenu = [
    PicturesPage(backgroundColorOfTitle: Colors.blue)
  ];
  void onTappedMenu(int index){
    setState(() {
      _currentIdex = index;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _childrenOfMenu[_currentIdex],
    );
  }
}