// ignore_for_file: library_private_types_in_public_api

import 'dart:convert';

import 'package:mobx/mobx.dart';
import 'package:http/http.dart' as http;
import '../../utils/models/foods.dart';
part 'main_screen_view_model.g.dart';

class MainScreenViewModel = _MainScreenViewModelBase with _$MainScreenViewModel;

abstract class _MainScreenViewModelBase with Store {
  
  @observable
  ObservableList<Foods> foodsList = ObservableList<Foods>();




   @action
    Future<List<Foods>> getAllFoods() async {

    var url = "http://192.168.169.154:44333/api/foods";
    var response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      var data = json.decode(response.body).toList();

      for (var item in data) {
        var food = Foods.fromJson(item);
        foodsList.add(food);
      } 
      return foodsList;
    } else {
      throw Exception('Veri çekme başarısız: ${response.statusCode}');
    }
    
    
  }

}