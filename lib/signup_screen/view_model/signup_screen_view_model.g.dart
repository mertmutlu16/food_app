// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signup_screen_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$SignupScreenViewModel on _SignupScreenViewModelBase, Store {
  late final _$emailControllerAtom = Atom(
      name: '_SignupScreenViewModelBase.emailController', context: context);

  @override
  TextEditingController get emailController {
    _$emailControllerAtom.reportRead();
    return super.emailController;
  }

  @override
  set emailController(TextEditingController value) {
    _$emailControllerAtom.reportWrite(value, super.emailController, () {
      super.emailController = value;
    });
  }

  late final _$fullnameControllerAtom = Atom(
      name: '_SignupScreenViewModelBase.fullnameController', context: context);

  @override
  TextEditingController get fullnameController {
    _$fullnameControllerAtom.reportRead();
    return super.fullnameController;
  }

  @override
  set fullnameController(TextEditingController value) {
    _$fullnameControllerAtom.reportWrite(value, super.fullnameController, () {
      super.fullnameController = value;
    });
  }

  late final _$passwordControllerAtom = Atom(
      name: '_SignupScreenViewModelBase.passwordController', context: context);

  @override
  TextEditingController get passwordController {
    _$passwordControllerAtom.reportRead();
    return super.passwordController;
  }

  @override
  set passwordController(TextEditingController value) {
    _$passwordControllerAtom.reportWrite(value, super.passwordController, () {
      super.passwordController = value;
    });
  }

  late final _$createUserAsyncAction =
      AsyncAction('_SignupScreenViewModelBase.createUser', context: context);

  @override
  Future<dynamic> createUser(String fullname, String email, String password) {
    return _$createUserAsyncAction
        .run(() => super.createUser(fullname, email, password));
  }

  late final _$_SignupScreenViewModelBaseActionController =
      ActionController(name: '_SignupScreenViewModelBase', context: context);

  @override
  TextEditingController getEmailController() {
    final _$actionInfo = _$_SignupScreenViewModelBaseActionController
        .startAction(name: '_SignupScreenViewModelBase.getEmailController');
    try {
      return super.getEmailController();
    } finally {
      _$_SignupScreenViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  TextEditingController getFullnameController() {
    final _$actionInfo = _$_SignupScreenViewModelBaseActionController
        .startAction(name: '_SignupScreenViewModelBase.getFullnameController');
    try {
      return super.getFullnameController();
    } finally {
      _$_SignupScreenViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  TextEditingController getPasswordController() {
    final _$actionInfo = _$_SignupScreenViewModelBaseActionController
        .startAction(name: '_SignupScreenViewModelBase.getPasswordController');
    try {
      return super.getPasswordController();
    } finally {
      _$_SignupScreenViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
emailController: ${emailController},
fullnameController: ${fullnameController},
passwordController: ${passwordController}
    ''';
  }
}
