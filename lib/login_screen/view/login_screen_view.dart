// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:food_app/main_screen/view/main_screen_view.dart';
import 'package:food_app/main_screen/view_model/main_screen_view_model.dart';


class LoginScreenView extends StatefulWidget {
  const LoginScreenView({super.key});

  @override
  State<LoginScreenView> createState() => _LoginScreenViewState();
}

class _LoginScreenViewState extends State<LoginScreenView> {
  MainScreenViewModel mainScreenViewModel = MainScreenViewModel();
  bool isObscured = false;
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            
            children: [
              SizedBox(
                height: 70,
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Text( "E-posta ve Şifreniz ile giriş yapın", 
                  style: TextStyle(
                    fontSize: 20 ,
                    fontWeight: FontWeight.bold,),
                ),
              ),
              
              SizedBox(
                height: 20,
              ),

              TextField(              
                decoration: InputDecoration(
                  labelText: "E-posta" ,
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black54),
                  ),
                  
                  ),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(              
                controller: passwordController,
                obscureText: isObscured ? false : true,
                decoration: InputDecoration(
                  labelText: "Şifre" ,
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black54),
                  ),
                  suffixIcon:GestureDetector(
                    onTap: (){
                      setState(() {
                        isObscured = !isObscured;
                        
                      });
                    },
                    child : isObscured ? Icon(Icons.visibility) : Icon(Icons.visibility_off),
                  ) 
                  ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.only(top: 8),
                child: Text("Şifremi unuttum" , style: const TextStyle(color: Color.fromARGB(1000,241,0,77) ,fontSize: 16),)),
              Spacer(),
              ElevatedButton(
                onPressed: (){
                  // Will be changed later . Trial edition
                  Navigator.push(context, 
                  MaterialPageRoute(builder: (context)=>mainScreenViewModel.buildingMainScreen(context)));
                },

              style: ElevatedButton.styleFrom(
                minimumSize: Size(double.infinity, 50),
                backgroundColor:  Color.fromARGB(1000,241,0,77),
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
                child: const Text("Devam et"),
              )
              
            ],
          ),
        ),
      ),
    );
  }
}