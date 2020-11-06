import 'package:ecommerce_app/constants.dart';
import 'package:ecommerce_app/widgets/default_button.dart';
import 'package:ecommerce_app/widgets/form_errors.dart';
import 'package:flutter/material.dart';

class ForgotPasswordForm extends StatefulWidget {
  ForgotPasswordForm({Key key}) : super(key: key);

  @override
  _ForgotPasswordFormState createState() => _ForgotPasswordFormState();
}

class _ForgotPasswordFormState extends State<ForgotPasswordForm> {
  final _formKey = GlobalKey<FormState>();
  List<String> errors = [];
  String email;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          _emailInput(),
          FormErrors(errors: errors),
          const SizedBox(height: 30),
          AppDefaulButton(
            text: 'Continuar',
            sufixIcon: Icons.send,
            onTap: () {
              if (_formKey.currentState.validate() && errors.length == 0) {
                _formKey.currentState.save();
                Navigator.pop(context);
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
      onSaved: (value) => email = value,
      decoration: InputDecoration(
        labelText: 'Email',
        hintText: 'Ingresa tu email',
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: Padding(
          padding: const EdgeInsets.only(right: 20),
          child: Icon(
            Icons.email_outlined,
            color: appSecondColor,
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
}
