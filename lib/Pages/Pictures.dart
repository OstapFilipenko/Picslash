import 'package:flutter/material.dart';
import 'package:picslash/Components/Img.dart';

class PicturesPage extends StatefulWidget {
  final Color backgroundColorOfTitle;

  const PicturesPage({Key key, this.backgroundColorOfTitle}): super(key:key);

  @override
  _PicturesPage createState() => _PicturesPage();
}

class _PicturesPage extends State<PicturesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: widget.backgroundColorOfTitle,
        title: new Center(
          child: Text("All Images"),
        ) 
      ),
      body: ImgView(),
    );
  }
}