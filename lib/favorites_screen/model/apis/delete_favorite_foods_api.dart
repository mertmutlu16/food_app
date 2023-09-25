import 'package:http/http.dart' as http;
import 'dart:convert';

class RemoveFromFavoritesApi {
  Future removeFromFavritesApi(int userId, int foodId) async {
    var url = "http://192.168.169.154:44333/api/favorites/removeFromFavorites";
    var favoriteModel = {"UserId": userId, "FoodId": foodId };
    var favoriteModelJson = jsonEncode(favoriteModel);
    var response = await http.delete(
      Uri.parse(url),
      body: favoriteModelJson,
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
    );

    if (response.statusCode == 200) {
      print("removed favs");
    } else {
      throw Exception('Veri çekme başarısız: ${response.statusCode}');
    }
  }
}
