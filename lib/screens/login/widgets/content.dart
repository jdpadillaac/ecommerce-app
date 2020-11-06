import 'package:ecommerce_app/screens/login/widgets/form.dart';
import 'package:ecommerce_app/widgets/register_account.dart';
import 'package:ecommerce_app/widgets/social_card.dart';
import 'package:flutter/material.dart';

class LoginScreenContent extends StatelessWidget {
  const LoginScreenContent({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _pageTitle(),
            const SizedBox(height: 20),
            _pageSubtitle(),
            const SizedBox(height: 30),
            LoginForm(),
            const SizedBox(height: 30),
            _socialMediaBoxes(),
            const SizedBox(height: 20),
            RegisterAccountText(),
          ],
        ),
      ),
    );
  }

  Row _socialMediaBoxes() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SocialCard(
          icon: 'assets/svg/google-icon.svg',
          onPress: () {},
        ),
        SocialCard(
          icon: 'assets/svg/facebook-2.svg',
          onPress: () {},
        ),
        SocialCard(
          icon: 'assets/svg/twitter.svg',
          onPress: () {},
        ),
      ],
    );
  }

  Text _pageSubtitle() {
    return Text(
      'Ingresa con tu email o con tus redes sosiales',
      textAlign: TextAlign.center,
      style: TextStyle(fontSize: 18),
    );
  }

  Text _pageTitle() {
    return Text(
      'Bienvenido de vuelta',
      style: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
