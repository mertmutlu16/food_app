
import 'package:http/http.dart' as http;

import 'dart:convert';

class SignupApi{

  Future signup(String fullname ,String email , String password) async{
   
    var url = "http://192.168.169.154:44333/api/users/createNewUser";
    var userModel = {"Fullname":fullname,"Email":email,"Password":password};
    var userModelJson = jsonEncode(userModel);
    var response = await http.post(Uri.parse(url) , body:userModelJson,headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },);

    if(response.statusCode == 201){
      print("New user created");
    }else {
      throw Exception('Veri çekme başarısız: ${response.statusCode}');

    }
  
  
  }


}