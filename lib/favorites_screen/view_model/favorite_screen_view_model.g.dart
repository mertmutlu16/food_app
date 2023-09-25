// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorite_screen_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$FavoritesScreenViewModel on _FavoriteScreenViewModelBase, Store {
  late final _$favoriteFoodsListAtom = Atom(
      name: '_FavoriteScreenViewModelBase.favoriteFoodsList', context: context);

  @override
  ObservableList<Foods> get favoriteFoodsList {
    _$favoriteFoodsListAtom.reportRead();
    return super.favoriteFoodsList;
  }

  @override
  set favoriteFoodsList(ObservableList<Foods> value) {
    _$favoriteFoodsListAtom.reportWrite(value, super.favoriteFoodsList, () {
      super.favoriteFoodsList = value;
    });
  }

  late final _$getFavoriteFoodsAsyncAction = AsyncAction(
      '_FavoriteScreenViewModelBase.getFavoriteFoods',
      context: context);

  @override
  Future<List<Foods>> getFavoriteFoods(int userId) {
    return _$getFavoriteFoodsAsyncAction
        .run(() => super.getFavoriteFoods(userId));
  }

  late final _$deleteFromFavoritesAsyncAction = AsyncAction(
      '_FavoriteScreenViewModelBase.deleteFromFavorites',
      context: context);

  @override
  Future<dynamic> deleteFromFavorites(int userId, int foodId) {
    return _$deleteFromFavoritesAsyncAction
        .run(() => super.deleteFromFavorites(userId, foodId));
  }

  @override
  String toString() {
    return '''
favoriteFoodsList: ${favoriteFoodsList}
    ''';
  }
}
