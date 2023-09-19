

// ignore_for_file: library_private_types_in_public_api

import 'package:food_app/main_screen/model/apis/foods_api.dart';
import 'package:mobx/mobx.dart';
import '../../utils/models/foods.dart';
part 'main_screen_view_model.g.dart';

class MainScreenViewModel = _MainScreenViewModelBase with _$MainScreenViewModel;

abstract class _MainScreenViewModelBase with Store {
  
    final FoodsApi _foodsApi = FoodsApi();
  @observable
  ObservableList<Foods> foodsList = ObservableList<Foods>();




   @action
    Future<List<Foods>> getAllFoods() async {

    var data= await _foodsApi.fetchAllFoods();
      for (var item in data) {
        var food = Foods.fromJson(item as Map<String, dynamic>);
        foodsList.add(food);
      }
      return foodsList;
    
    
  }

}