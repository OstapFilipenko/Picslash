import 'dart:convert';

import 'package:http/http.dart' as http;
import 'dart:async';

import 'package:picslash/Models/Picture.dart';

class API_connection{

  Future<List<Picture>> getPictures() async{
    List<Picture> list;
    var res = await http.get(
      "https://api.unsplash.com//photos?per_page=30",
      headers: {
        'Accept-Version': 'v1',
        'Authorization': 'Client-ID fZZop4D9xtDfIsLvMVHAn8D9DAWoA0h4T2mqXJOUAkU',
        'Accept': 'application/json'
      },
    );
    print(res.body);
    if(res.statusCode == 200){
      var data = json.decode(res.body) as List;
      print(data);
      list = data.map<Picture>((json)=>Picture.fromJson(json)).toList();
    }
    print(list.length);
    return list;
  }

}