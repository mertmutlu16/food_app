// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:food_app/detail_screen/model/apis/single_food_api.dart';
import 'package:food_app/utils/models/foods.dart';
import 'package:mobx/mobx.dart';
part 'detail_screen_view_model.g.dart';

class DetailScreenViewModel = _DetailScreenViewModelBase with _$DetailScreenViewModel;

abstract class _DetailScreenViewModelBase with Store {
  
  final SingleFoodApi _singleFoodApi = SingleFoodApi();
  
  @observable
   Foods? singleFood;


   @action
    Future<Foods?> getSingleFood(int id ) async {

    var data;
  await _singleFoodApi.fetchOneFood(id).then((value) => data=value).catchError((err){
    debugPrint(err.toString());
  });   
    

  if(data.isNotEmpty){
    var food=Foods.fromJson(data as Map<String,dynamic>);
    singleFood = food;
    return singleFood;

  }else{
    throw Exception("Veri bulunamadı.");
  }
    

    
  }



}