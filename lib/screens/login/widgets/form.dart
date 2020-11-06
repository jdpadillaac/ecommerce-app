import 'package:ecommerce_app/constants.dart';
import 'package:ecommerce_app/screens/forgot_password/forgot_password_screen.dart';
import 'package:ecommerce_app/screens/login_success/login_success_screen.dart';
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
  String email;
  String password;
  bool remember = false;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          _emailInput(),
          const SizedBox(height: 25),
          _passwordInput(),
          const SizedBox(height: 15),
          _rememberPasswordInputs(context),
          const SizedBox(height: 15),
          FormErrors(errors: errors),
          const SizedBox(height: 15),
          AppDefaulButton(
            text: 'Ingresasssr',
            onTap: () {
              if (_formKey.currentState.validate() && errors.length == 0) {
                _formKey.currentState.save();
                Navigator.pushNamed(
                  context,
                  LoginSuccesScrenn.routeName,
                );
              }
            },
          ),
        ],
      ),
    );
  }

  Row _rememberPasswordInputs(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: remember,
          activeColor: AppColors.mainColor,
          onChanged: (value) {
            print(value);
            setState(() {
              remember = value;
            });
          },
        ),
        Text('Recordar'),
        Spacer(),
        InkWell(
          child: Text(
            'Recordar contraseña',
            style: TextStyle(
              decoration: TextDecoration.underline,
            ),
          ),
          onTap: () => Navigator.pushNamed(
            context,
            ForgotPasswordScreen.routeName,
          ),
        ),
      ],
    );
  }

  TextFormField _emailInput() {
    const String emptyEmail = 'El email es requerido';
    const String invalidEmail = 'El email no es válido';

    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      onSaved: (value) => email = value,
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
      onSaved: (newValue) => password = newValue,
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
