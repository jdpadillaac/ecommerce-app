import 'package:ecommerce_app/screens/forgot_password/widgets/content.dart';
import 'package:ecommerce_app/widgets/appbar_back_button.dart';
import 'package:flutter/material.dart';

class ForgotPasswordScreen extends StatelessWidget {
  static String routeName = 'forgotPassword';
  const ForgotPasswordScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: AppbarBackButton(),
        title: Text('Recuperar contraseña'),
      ),
      body: ForgotPasswordContent(),
    );
  }
}
