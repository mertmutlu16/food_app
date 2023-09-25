import 'package:flutter/cupertino.dart';
import 'package:food_app/favorites_screen/model/apis/get_favorite_foods_api.dart';
import 'package:food_app/utils/models/foods.dart';
import 'package:mobx/mobx.dart';

import '../model/apis/delete_favorite_foods_api.dart';
part 'favorite_screen_view_model.g.dart';

class FavoritesScreenViewModel = _FavoriteScreenViewModelBase
    with _$FavoritesScreenViewModel;

abstract class _FavoriteScreenViewModelBase with Store {
  
  final GetFavoriteFoodsApi _getFavoriteFoodsApi = GetFavoriteFoodsApi();
  final RemoveFromFavoritesApi _removeFromFavorites = RemoveFromFavoritesApi();


  @observable
  ObservableList<Foods> favoriteFoodsList = ObservableList<Foods>();

  @action
  Future<List<Foods>> getFavoriteFoods(int userId) async {

    favoriteFoodsList.clear();
    var data;
    await _getFavoriteFoodsApi
        .getFavoriteFoodsApi(userId)
        .then((value) => data = value)
        .catchError((err) {
      debugPrint(err.toString());
    });
    for (var item in data) {
      var food = Foods.fromJson(item as Map<String, dynamic>);
      favoriteFoodsList.add(food);
    }
    return favoriteFoodsList;
  }


  
  @action
  Future deleteFromFavorites(int userId, int foodId ) async {
    await _removeFromFavorites.removeFromFavritesApi(userId, foodId).catchError((err) {
      debugPrint(err.toString());
    });
  }
}
