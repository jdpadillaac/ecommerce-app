import 'package:ecommerce_app/constants.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  static String routeName = 'loginPage';
  const LoginScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: AppColors.mainColor,
              size: 30,
            ),
            onPressed: () => Navigator.pop(context),
          ),
          centerTitle: true,
          elevation: 0,
          title: Text(
            'Inicio de sesión',
            style: TextStyle(color: AppColors.mainColor),
          ),
          backgroundColor: Colors.white,
          brightness: Brightness.light,
        ),
      ),
    );
  }
}
