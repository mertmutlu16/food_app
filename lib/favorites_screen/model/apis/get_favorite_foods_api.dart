import 'dart:convert';

import 'package:http/http.dart' as http;

class GetFavoriteFoodsApi{

  Future<List> getFavoriteFoodsApi(int userId) async {


    var url = "http://192.168.169.154:44333/api/favorites/$userId";
    var response = await http.get(Uri.parse(url));

    if(response.statusCode == 200){
      var jsonData = json.decode(response.body).toList();

      return jsonData;
    }else {
      throw Exception('Veri çekme başarısız: ${response.statusCode}');

    }
  
  }
}