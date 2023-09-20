import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

import '../../utils/models/users.dart';
import '../model/apis/user_verification_api.dart';
part 'login_screen_view_model.g.dart';

class LoginScreenViewModel = _LoginScreenViewModelBase
    with _$LoginScreenViewModel;

abstract class _LoginScreenViewModelBase with Store {
  final UserVerificationApi _userVerificationApi = UserVerificationApi();

  @observable
  TextEditingController emailTextController = TextEditingController();

  @observable
  TextEditingController passwordTextController = TextEditingController();

  @observable
  Users? user;

  @action
  TextEditingController getEmailController() {
    return emailTextController;
  }

  @action
  TextEditingController getPasswordController() {
    return passwordTextController;
  }

  @action
  Future<Users?> getUser(String email, String password) async {
    var data;
    await _userVerificationApi
        .userVeriff(email, password)
        .then((value) => data = value)
        .catchError((err) {
      debugPrint(err.toString());
    });

    if (data.isNotEmpty) {
      var userData = Users.fromJson(data[0]);
      user = userData;
      return user;
    } else {
      throw Exception("Veri bulunamadı.");
    }
  }
}
