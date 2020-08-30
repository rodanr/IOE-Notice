import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class NetworkingHelper {
  final String url;
  NetworkingHelper({@required this.url});
  Future getNoticeData() async {
    try {
      //should wait till we receive the response
      http.Response response = await http.get(url);
      // print(url);
      //Converts the String data into json format so we can retrieve the
      //value using the keys
      if(response.statusCode == 200){
        var noticeData = convert.jsonDecode(response.body);
        //print(noticeData);
        return noticeData;
      }
      if(response.statusCode == 500){
//        print("IOE SERVER IS DOWN");

      return "500";
      }
    } catch (e) {
      print(e);
    }
  }
}
