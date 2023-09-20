
import 'package:http/http.dart' as http;

import 'dart:convert';

class UserVerificationApi{

  Future userVeriff(String email , String password) async{
   
    var url = "http://192.168.169.154:44333/api/users";
    var userModel = {"Fullname":"","Email":email,"Password":password};
    var userModelJson = jsonEncode(userModel);
    var response = await http.post(Uri.parse(url) , body:userModelJson,headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },);

    if(response.statusCode == 200){
      var jsonData = json.decode(response.body) ;
      
      return jsonData;
    }else {
      throw Exception('Veri çekme başarısız: ${response.statusCode}');

    }
  
  
  }


}