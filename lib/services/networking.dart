import 'dart:convert';
import 'package:clima/screens/loading_screen.dart';
import 'package:http/http.dart' as http;

class NetworkHelper {
  final String url;

  NetworkHelper(this.url);

  Future<void> getData() async {
    http.Response response = await http.get(url);
    if(response.statusCode == 200){
      String data = response.body;
      return jsonDecode(data);
    }else {
      print(response.statusCode);
    }
  }
}