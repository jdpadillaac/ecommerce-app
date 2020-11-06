import 'package:ecommerce_app/constants.dart';
import 'package:ecommerce_app/screens/login/widgets/content.dart';
import 'package:ecommerce_app/widgets/appbar_back_button.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  static String routeName = 'loginPage';
  const LoginScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: _loginScreenAppBar(context),
        body: SingleChildScrollView(
          child: LoginScreenContent(),
        ),
      ),
    );
  }

  AppBar _loginScreenAppBar(BuildContext context) {
    return AppBar(
      leading: AppbarBackButton(),
      centerTitle: true,
      elevation: 0,
      title: Text(
        'Inicio de sesión',
        style: TextStyle(color: AppColors.mainColor),
      ),
      backgroundColor: Colors.white,
      brightness: Brightness.light,
    );
  }
}
