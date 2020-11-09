import 'package:ecommerce_app/constants.dart';
import 'package:ecommerce_app/screens/complete_profile/widgets/form.dart';
import 'package:ecommerce_app/screens/forgot_password/widgets/content.dart';
import 'package:ecommerce_app/size_data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CompleteProfileScreenContent extends StatelessWidget {
  const CompleteProfileScreenContent({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const TextStyle subtitleStyle = TextStyle(
      color: appSecondColor,
      fontSize: 18,
    );

    return Container(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: SizeConfig.screenHeight * 0.05),
            const HeadingTitle(title: 'Completar registro'),
            const Text(
              'Complete detalles de su perfil o continue con sus redes sociales',
              textAlign: TextAlign.center,
              style: subtitleStyle,
            ),
            SizedBox(height: SizeConfig.screenHeight * 0.05),
            CompleteProfileForm(),
            SizedBox(height: getProportionateScreenHeight(30)),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: const Text(
                'Debes confirmar tu telefono, tu direccion, terminos y condiciones',
                textAlign: TextAlign.center,
                style: subtitleStyle,
              ),
            ),
            SizedBox(height: getProportionateScreenHeight(30)),
          ],
        ),
      ),
    );
  }
}
