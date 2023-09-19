// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detail_screen_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$DetailScreenViewModel on _DetailScreenViewModelBase, Store {
  late final _$singleFoodAtom =
      Atom(name: '_DetailScreenViewModelBase.singleFood', context: context);

  @override
  Foods? get singleFood {
    _$singleFoodAtom.reportRead();
    return super.singleFood;
  }

  @override
  set singleFood(Foods? value) {
    _$singleFoodAtom.reportWrite(value, super.singleFood, () {
      super.singleFood = value;
    });
  }

  late final _$getSingleFoodAsyncAction =
      AsyncAction('_DetailScreenViewModelBase.getSingleFood', context: context);

  @override
  Future<Foods?> getSingleFood(int id) {
    return _$getSingleFoodAsyncAction.run(() => super.getSingleFood(id));
  }

  @override
  String toString() {
    return '''
singleFood: ${singleFood}
    ''';
  }
}
