// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main_screen_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$MainScreenViewModel on _MainScreenViewModelBase, Store {
  late final _$foodsListAtom =
      Atom(name: '_MainScreenViewModelBase.foodsList', context: context);

  @override
  ObservableList<Foods> get foodsList {
    _$foodsListAtom.reportRead();
    return super.foodsList;
  }

  @override
  set foodsList(ObservableList<Foods> value) {
    _$foodsListAtom.reportWrite(value, super.foodsList, () {
      super.foodsList = value;
    });
  }

  late final _$getAllFoodsAsyncAction =
      AsyncAction('_MainScreenViewModelBase.getAllFoods', context: context);

  @override
  Future<List<Foods>> getAllFoods() {
    return _$getAllFoodsAsyncAction.run(() => super.getAllFoods());
  }

  @override
  String toString() {
    return '''
foodsList: ${foodsList}
    ''';
  }
}
