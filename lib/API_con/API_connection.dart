import 'package:http/http.dart' as http;
import 'dart:async';

class API_connection{

  static Future getPictures() async{
    return await http.get(
      Uri.encodeFull("https://api.unsplash.com//photos?per_page=30"),
      headers: {
        'Accept-Version': 'v1',
        'Authorization': 'Client-ID fZZop4D9xtDfIsLvMVHAn8D9DAWoA0h4T2mqXJOUAkU',
        'Accept': 'application/json'
      },
    );
  }

}