import 'package:http/http.dart' as http;
import 'dart:async';

class APIConn{
  static var params = {
    'per_page': '100',
  };

  static var uri =  Uri.https('https://api.unsplash.com/', 'photos', params);

  static Future getPictures(){
    return http.get(
      uri,
      headers: {
        'Accept-Version': 'v1',
        'Authorization': 'Client-ID fZZop4D9xtDfIsLvMVHAn8D9DAWoA0h4T2mqXJOUAkU',
        'Accept': 'application/json'
      },
    );
  }

}