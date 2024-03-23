import 'dart:convert';

import 'package:http/http.dart'as http;

class userApiSer{
  Future<dynamic> Sentdata(String name,adrs,gender,phnno,email,pass) async {
    var client = http.Client();
    var apiurl = Uri.parse("http://localhost:8085/api/user/signup");
    var response = await client.post(apiurl, headers: <String, String>
    {
      "Content-Type": "application/Json;charset=UTF-8 "
    }, body:jsonEncode(<String, String>
    {
      "user_name":name,
      "user_adrs":adrs,
      "user_gender":gender,
      "user_phnno":phnno,
      "user_email":email,
      "user_pass":pass
    }
    )
    );
    if (response.statusCode == 200) {
      return json.decode(response.body);
    }
    else {
      throw Exception("Failed");
    }
  }

}