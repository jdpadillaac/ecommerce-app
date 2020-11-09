import 'package:ecommerce_app/constants.dart';
import 'package:ecommerce_app/screens/forgot_password/widgets/content.dart';
import 'package:ecommerce_app/size_data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CompleteProfileScreenContent extends StatelessWidget {
  const CompleteProfileScreenContent({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        children: [
          const HeadingTitle(title: 'Completar registro'),
          const Text(
            'Complete detalles de su perfil o continue con sus redes sociales',
            textAlign: TextAlign.center,
          ),
          CompleteProfileForm()
        ],
      ),
    );
  }
}

class CompleteProfileForm extends StatefulWidget {
  CompleteProfileForm({Key key}) : super(key: key);

  @override
  _CompleteProfileFormState createState() => _CompleteProfileFormState();
}

class _CompleteProfileFormState extends State<CompleteProfileForm> {
  final _formKey = GlobalKey<FormState>();
  List<String> errors = [];
  String email;
  String password;
  String confirmPassword;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: Column(
          children: [
            _buldFirtName(),
            SizedBox(height: getProportionateScreenHeight(30)),
            _buildLastName(),
          ],
        ),
      ),
    );
  }

  TextFormField _buldFirtName() {
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
            color: appPrimaryColor,
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

  TextFormField _buildLastName() {
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
            color: appPrimaryColor,
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
