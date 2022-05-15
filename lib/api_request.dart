import 'dart:convert';
import 'dart:async';
import 'package:http/http.dart' as http;

const String url = "https://randomuser.me/api/?results=10";

Future<dynamic> getdata() async {
  var response = await http.get(Uri.parse(url));

  List convertedData = jsonDecode(response.body)['results'];
  return convertedData;
  
}