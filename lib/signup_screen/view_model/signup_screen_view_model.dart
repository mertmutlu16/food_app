import 'package:flutter/material.dart';
import 'package:food_app/signup_screen/model/apis/signup_api.dart';
import 'package:mobx/mobx.dart';
part 'signup_screen_view_model.g.dart';

class SignupScreenViewModel = _SignupScreenViewModelBase with _$SignupScreenViewModel;

abstract class _SignupScreenViewModelBase with Store {
  final SignupApi _signupApi = SignupApi();

  @observable
  TextEditingController emailController = TextEditingController();

  @observable
  TextEditingController fullnameController = TextEditingController();
  
  @observable
  TextEditingController passwordController = TextEditingController();


  @action
  TextEditingController getEmailController(){
    return emailController;
  }

  @action
  TextEditingController getFullnameController(){
    return fullnameController;
  }

  @action
  TextEditingController getPasswordController(){
    return passwordController;
  }

  @action
  Future createUser(String fullname ,String email, String password) async {
    
    await _signupApi
        .signup(fullname , email, password)
        .catchError((err) {
      debugPrint(err.toString());
    });

    
  }


}