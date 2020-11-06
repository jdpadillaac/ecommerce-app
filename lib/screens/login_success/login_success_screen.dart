import 'package:ecommerce_app/screens/home/home_screen.dart';
import 'package:ecommerce_app/widgets/appbar_back_button.dart';
import 'package:ecommerce_app/widgets/default_button.dart';
import 'package:flutter/material.dart';

class LoginSuccesScrenn extends StatelessWidget {
  static String routeName = 'loginSuccess';
  const LoginSuccesScrenn({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const TextStyle titleStyle = TextStyle(
      fontSize: 40,
      fontWeight: FontWeight.bold,
    );

    return Container(
      child: Scaffold(
        appBar: AppBar(
          leading: AppbarBackButton(),
          title: Text('Inicio exitoso'),
        ),
        body: Padding(
          padding: EdgeInsets.all(30),
          child: Container(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset('assets/custom/splash4.png'),
                const Spacer(),
                const Text(
                  'Inicio de sesión exitoso',
                  textAlign: TextAlign.center,
                  style: titleStyle,
                ),
                const Spacer(),
                AppDefaulButton(
                  text: 'Continuar',
                  onTap: () => Navigator.pushReplacementNamed(
                    context,
                    HomeScreen.routeName,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
