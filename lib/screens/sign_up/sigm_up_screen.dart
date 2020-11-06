import 'package:ecommerce_app/screens/sign_up/widgets/content.dart';
import 'package:ecommerce_app/widgets/appbar_back_button.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  static String routeName = 'signUp';
  const SignUpScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Registrate'),
          leading: AppbarBackButton(),
        ),
        body: SingleChildScrollView(
          child: SignUpScreenContent(),
        ),
      ),
    );
  }
}
