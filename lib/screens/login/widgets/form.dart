import 'package:ecommerce_app/constants.dart';
import 'package:ecommerce_app/widgets/default_button.dart';
import 'package:ecommerce_app/widgets/form_errors.dart';
import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  LoginForm({Key key}) : super(key: key);

  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();
  final List<String> errors = [];

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          _emailInput(),
          SizedBox(height: 25),
          _passwordInput(),
          SizedBox(height: 20),
          FormErrors(errors: errors),
          SizedBox(height: 20),
          AppDefaulButton(
            text: 'Ingresar',
            onTap: () {
              if (_formKey.currentState.validate()) {
                _formKey.currentState.save();
              }
            },
          ),
        ],
      ),
    );
  }

  TextFormField _emailInput() {
    const String emptyEmail = 'El email es requerido';
    const String invalidEmail = 'El email no es válido';

    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        labelText: 'Email',
        hintText: 'Ingresa tu email',
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: Padding(
          padding: const EdgeInsets.only(right: 20),
          child: Icon(
            Icons.email_outlined,
            color: AppColors.secondColor,
          ),
        ),
      ),
      validator: (value) {
        const String emptyEmail = 'El email es requerido';
        const String invalidEmail = 'El email no es válido';

        if (value.isEmpty && !errors.contains(emptyEmail)) {
          setState(() {
            errors.add(emptyEmail);
          });
        }
        RegExp regExp = RegExp(emailPattern);
        if (!regExp.hasMatch(value) && !errors.contains(invalidEmail)) {
          setState(() {
            errors.add(invalidEmail);
          });
        }
        return null;
      },
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(emptyEmail)) {
          setState(() {
            errors.remove(emptyEmail);
          });
        }

        RegExp regExp = RegExp(emailPattern);
        if (regExp.hasMatch(value) && errors.contains(invalidEmail)) {
          setState(() {
            errors.remove(invalidEmail);
          });
        }

        return null;
      },
    );
  }

  TextFormField _passwordInput() {
    const emptyPassword = 'La contraseña es requerida';

    return TextFormField(
      obscureText: true,
      decoration: InputDecoration(
        labelText: 'Contraseña',
        hintText: '* * * * * * * *',
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: Padding(
          padding: const EdgeInsets.only(right: 25),
          child: Icon(
            Icons.lock_outline,
            color: AppColors.secondColor,
          ),
        ),
      ),
      validator: (value) {
        if (value.isEmpty && !errors.contains(emptyPassword)) {
          setState(() {
            errors.add(emptyPassword);
          });
        }
        return null;
      },
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(emptyPassword)) {
          setState(() {
            errors.remove(emptyPassword);
          });
        }
        return null;
      },
    );
  }
}