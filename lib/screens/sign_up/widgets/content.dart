import 'package:ecommerce_app/constants.dart';
import 'package:ecommerce_app/screens/forgot_password/widgets/content.dart';
import 'package:ecommerce_app/widgets/default_button.dart';
import 'package:ecommerce_app/widgets/form_errors.dart';
import 'package:ecommerce_app/widgets/social_card.dart';
import 'package:flutter/material.dart';

class SignUpScreenContent extends StatelessWidget {
  const SignUpScreenContent({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 700,
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 50),
        child: Column(
          children: [
            HeadingTitle(title: 'Registra una cuenta'),
            const SizedBox(height: 10),
            Text('Ingresa todos tus datos o ingresa con redes sociales'),
            const Spacer(),
            SignUpForm(),
            const Spacer(),
            _buildSocialMediaBox(),
            const SizedBox(height: 10),
            Text(
              'Para continuar debes verificar tu correo con los terminos y conidciones',
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }

  Row _buildSocialMediaBox() {
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
}

class SignUpForm extends StatefulWidget {
  SignUpForm({Key key}) : super(key: key);

  @override
  _SignUpFormState createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final _formKey = GlobalKey<FormState>();
  String email;
  String password;
  String confirmPassword;
  List<String> errors = [];
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          _buildEmailInput(),
          const SizedBox(height: 20),
          _passwordInput(),
          const SizedBox(height: 20),
          _buildConfirmPassword(),
          const SizedBox(height: 20),
          FormErrors(errors: errors),
          const SizedBox(height: 20),
          AppDefaulButton(onTap: () {}, text: 'Registrar'),
        ],
      ),
    );
  }

  TextFormField _buildEmailInput() {
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

  TextFormField _buildConfirmPassword() {
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
