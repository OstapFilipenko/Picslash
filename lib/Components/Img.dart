import 'package:flutter/material.dart';
import 'package:picslash/API_con/API_connection.dart';
import 'package:picslash/Models/Picture.dart';
import 'package:getflutter/getflutter.dart';
class ImgView extends StatefulWidget {
  @override
  _ImgViewState createState() => _ImgViewState();
}

class _ImgViewState extends State<ImgView> {
  var allImages =  new List<Picture>();
  int counter = 1;
  _getPics() async {
    allImages = await API_connection(1).getPictures();
  }

  var newImages = new List<Picture>();
  _getNewPics() async{
    counter++;
    newImages.clear();
    newImages = await API_connection(counter).getPictures();
    allImages.addAll(newImages);
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
  
  @override
  Widget build(BuildContext context) {
    return Container(
      child: new ListView.builder(
        scrollDirection: Axis.vertical,  
        itemCount: allImages.length,
        itemBuilder: (BuildContext ctxt, int index) {
          return (index == allImages.length-1) ? 
            Container(
              color: Colors.blue,
              child: FlatButton(
                  child: Text("Load More",
                          style: new TextStyle(
                            color: Colors.white
                          )
                        ),
                  onPressed: () {
                    _getNewPics();
                  },
              ),
            )
            : new Container(
              margin: EdgeInsets.fromLTRB(0.0, 30.0, 0.0, 5.0),
              child: new Column(
                children: <Widget>[
                  new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      new Row(
                        children: <Widget>[
                          new GFAvatar(
                            backgroundImage: NetworkImage(allImages[index].user.profile_image.large),
                            size: 25.0,
                          ),
                          new Padding(
                            padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                            child: new Text(
                              allImages[index].user.username,
                              style: TextStyle(
                                fontSize: 17.0, 
                              ),
                            ),
                          ),
                        ],
                      ),
                      new Flexible(
                        child: new Text(
                          "Instagram : @" + allImages[index].user.instagram_username
                        ) 
                      ),
                      
                    ],
                  ),
                  new GestureDetector(
                    onLongPress: (){
                      showMenu(
                        items: <PopupMenuEntry>[
                          new PopupMenuItem(
                            value: allImages[index],
                            child: new GestureDetector(
                              onTap: () async{
                                
                              },
                              child: Row(
                                children: <Widget>[
                                  new Icon(Icons.file_download),
                                  new Text("Donwload")
                                ],
                              ),
                            ),
                          ),
                        ],
                        context: context,
                        position: RelativeRect.fromLTRB(100.0, 100.0, 0.0, 0.0),
                      );
                    },
                    child: new Container(
                      constraints: BoxConstraints(
                        minWidth: MediaQuery.of(context).size.width,
                        maxWidth: MediaQuery.of(context).size.width,
                        minHeight: MediaQuery.of(context).size.height-100,
                        maxHeight: MediaQuery.of(context).size.height-100,
                      ),
                      decoration: new BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(allImages[index].urls.regular),
                          fit: BoxFit.cover
                        ),
                        
                      ),
                      padding: const EdgeInsets.all(10.0),
                      margin: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
                    )
                  ),
                  new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      new Row(
                        children: <Widget>[
                          new GestureDetector(
                            onTap: (){
                              //change color
                            },
                            child:new Icon(
                              Icons.favorite_border,
                            ),
                          ),
                          new Text(allImages[index].likes.toString()),
                        ],
                      ),
                      new Text("Posted at: " + allImages[index].created_at.split("T")[0])
                    ],
                  )
                ],
              ),
            );
        }
      )
    );
  }
  
  

  showContainer() {}

  
}