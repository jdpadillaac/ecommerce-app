import 'package:ecommerce_app/screens/forgot_password/widgets/form.dart';
import 'package:ecommerce_app/widgets/register_account.dart';
import 'package:flutter/material.dart';

class ForgotPasswordContent extends StatelessWidget {
  const ForgotPasswordContent({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            HeadingTitle(title: 'Recuperar contraseña'),
            const SizedBox(height: 15),
            _buildSubtitle(),
            const Spacer(),
            ForgotPasswordForm(),
            const Spacer(),
            RegisterAccountText()
          ],
        ),
      ),
    );
  }

  Text _buildSubtitle() {
    return Text(
      'Ingresa tu email y te enviaremos un link de recuperación para rener acceso a tu cuenta',
      textAlign: TextAlign.center,
    );
  }
}

class HeadingTitle extends StatelessWidget {
  final String title;
  const HeadingTitle({
    Key key,
    @required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
