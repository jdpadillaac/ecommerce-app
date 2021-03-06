import 'package:ecommerce_app/screens/complete_profile/widgets/content.dart';
import 'package:ecommerce_app/widgets/appbar_back_button.dart';
import 'package:flutter/material.dart';

class CompleteProfileScreen extends StatelessWidget {
  static String routeName = 'completeProfile';
  const CompleteProfileScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Completar registro'),
          leading: AppbarBackButton(),
        ),
        body: CompleteProfileScreenContent(),
      ),
    );
  }
}
