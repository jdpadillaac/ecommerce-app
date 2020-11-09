import 'package:ecommerce_app/constants.dart';
import 'package:ecommerce_app/size_data.dart';
import 'package:ecommerce_app/widgets/default_button.dart';
import 'package:ecommerce_app/widgets/form_errors.dart';
import 'package:flutter/material.dart';

class CompleteProfileForm extends StatefulWidget {
  CompleteProfileForm({Key key}) : super(key: key);

  @override
  _CompleteProfileFormState createState() => _CompleteProfileFormState();
}

class _CompleteProfileFormState extends State<CompleteProfileForm> {
  final _formKey = GlobalKey<FormState>();
  List<String> errors = [];
  String firstName;
  String lastName;
  String phoneNumber;
  String address;

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
            SizedBox(height: getProportionateScreenHeight(30)),
            _buildLastPhoneNumer(),
            SizedBox(height: getProportionateScreenHeight(30)),
            _buildAddressInput(),
            FormErrors(errors: errors),
            SizedBox(height: getProportionateScreenHeight(40)),
            AppDefaulButton(
              text: 'Confirmar',
              onTap: () {
                if (_formKey.currentState.validate() && errors.length == 0) {
                  // Do something
                }
              },
            )
          ],
        ),
      ),
    );
  }

  TextFormField _buldFirtName() {
    const String requiredFirtName = 'El primer nombre es requerido';
    return TextFormField(
      onSaved: (value) => firstName = value,
      decoration: InputDecoration(
        labelText: 'Primer nombre',
        hintText: 'Ingresa tu primer nombre',
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: Padding(
          padding: const EdgeInsets.only(right: 20),
          child: const Icon(
            Icons.account_tree_sharp,
            color: appPrimaryColor,
          ),
        ),
      ),
      validator: (value) {
        if (value.isEmpty && !errors.contains(requiredFirtName)) {
          setState(() {
            errors.add(requiredFirtName);
          });
        }
        return null;
      },
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(requiredFirtName)) {
          setState(() {
            errors.remove(requiredFirtName);
          });
        }

        return null;
      },
    );
  }

  TextFormField _buildLastName() {
    const String requiredLastName = 'El segundo nombre es requerido';
    return TextFormField(
      onSaved: (value) => lastName = value,
      decoration: InputDecoration(
        labelText: 'Segundo nombre',
        hintText: 'Ejemplo: Ramirez',
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: Padding(
          padding: const EdgeInsets.only(right: 20),
          child: const Icon(
            Icons.account_circle_outlined,
            color: appPrimaryColor,
          ),
        ),
      ),
      validator: (value) {
        if (value.isEmpty && !errors.contains(requiredLastName)) {
          setState(() {
            errors.add(requiredLastName);
          });
        }
        return null;
      },
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(requiredLastName)) {
          setState(() {
            errors.remove(requiredLastName);
          });
        }

        return null;
      },
    );
  }

  TextFormField _buildLastPhoneNumer() {
    const String requiredPhoneNumber = 'El teléfono es requerido';
    return TextFormField(
      keyboardType: TextInputType.number,
      onSaved: (value) => phoneNumber = value,
      decoration: InputDecoration(
        labelText: 'Número de telefeno',
        hintText: 'un numero de teléfono válido',
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: Padding(
          padding: const EdgeInsets.only(right: 20),
          child: const Icon(
            Icons.phone_android,
            color: appPrimaryColor,
          ),
        ),
      ),
      validator: (value) {
        if (value.isEmpty && !errors.contains(requiredPhoneNumber)) {
          setState(() {
            errors.add(requiredPhoneNumber);
          });
        }
        return null;
      },
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(requiredPhoneNumber)) {
          setState(() {
            errors.remove(requiredPhoneNumber);
          });
        }
        return null;
      },
    );
  }

  TextFormField _buildAddressInput() {
    const String requiredPhoneNumber = 'La dirección es requerida';
    return TextFormField(
      keyboardType: TextInputType.text,
      onSaved: (value) => address = value,
      decoration: InputDecoration(
        labelText: 'Debe agregar una dirección',
        hintText: 'Ejemplo calle 100 casa 5',
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: Padding(
          padding: const EdgeInsets.only(right: 20),
          child: const Icon(
            Icons.location_city,
            color: appPrimaryColor,
          ),
        ),
      ),
      validator: (value) {
        if (value.isEmpty && !errors.contains(requiredPhoneNumber)) {
          setState(() {
            errors.add(requiredPhoneNumber);
          });
        }
        return null;
      },
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(requiredPhoneNumber)) {
          setState(() {
            errors.remove(requiredPhoneNumber);
          });
        }
        return null;
      },
    );
  }
}
