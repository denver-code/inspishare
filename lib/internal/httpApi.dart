import 'dart:convert';

import 'package:http/http.dart' as http;

import '../config.dart';

class Api {
  static String host = Config.serverIp();

  static const String apiver = Config.versionAPI;

  static Future<List> post(body, endpoint, headers) async {
    var url = Uri.parse("http://$host/api/$apiver/$endpoint");
    Map map = body;
    var response =
        await http.post(url, headers: headers, body: json.encode(map));

    // if (response.statusCode == 200) {
    //   return json.decode(response.body);
    // } else {
    //   throw Exception('Failed to fetch data: $response');
    // }
    print(response);
    print(json.decode(response.body));
    return [response.statusCode, json.decode(response.body)];
  }
}
