import 'package:ecommerce_app/constants.dart';
import 'package:flutter/material.dart';

class RegisterAccountText extends StatelessWidget {
  const RegisterAccountText({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'No tienes una cuenta',
          style: TextStyle(
            fontSize: 18,
          ),
        ),
        const SizedBox(width: 10),
        Text(
          'Registrate',
          style: const TextStyle(
            color: appPrimaryColor,
            fontSize: 16,
          ),
        ),
      ],
    );
  }
}
