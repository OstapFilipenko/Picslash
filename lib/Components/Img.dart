import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:picslash/API_con/API_connection.dart';
import 'package:picslash/Models/Picture.dart';


class ImgView extends StatefulWidget {
  @override
  _ImgViewState createState() => _ImgViewState();
}

class _ImgViewState extends State<ImgView> {
  var allImages =  new List<Picture>();

  _getPics(){
    API_connection.getPictures().then((response){
      setState(() {
        Iterable list = json.decode(response.body);
        allImages = list.map((model) => Picture.fromJson(model)).toList();
      });
    });
  }  


  @override
  void initState() {
    super.initState();
    _getPics();
  }

  @override
  void dispose() {
    super.dispose();
  }
  
  static const double borderRadius = 20.0;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: new ListView.builder(  
        itemCount: allImages.length,
        itemBuilder: (BuildContext ctxt, int index) {
          return new Container(
            decoration: new BoxDecoration(
              color: Colors.blue,
              borderRadius: new BorderRadius.only(
                topLeft: Radius.circular(borderRadius),
                topRight: Radius.circular(borderRadius),
                bottomLeft: Radius.circular(borderRadius),
                bottomRight: Radius.circular(borderRadius),
              )
            ),
            padding: const EdgeInsets.all(10.0),
            margin: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
            child: Column(
              children: <Widget>[
                Text("ID: " + allImages[index].id),
                Text("Width: " + allImages[index].width.toString()),
                Text("Height: " + allImages[index].height.toString()),
                Text("Description: " + allImages[index].description),
              ],
            ),
          );
        }
      )
    );
  }
}