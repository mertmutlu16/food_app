
import 'package:http/http.dart' as http;

import 'dart:convert';

class FoodsApi{

  Future<List> fetchAllFoods() async{
   
    
    var url = "http://192.168.169.154:44333/api/foods";
    var response = await http.get(Uri.parse(url));

    if(response.statusCode == 200){
      var jsonData = json.decode(response.body).toList();

      return jsonData;
    }else {
      throw Exception('Veri çekme başarısız: ${response.statusCode}');

    }
  
  
  }


}