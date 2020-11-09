import 'package:ecommerce_app/screens/splash/widgets/splash_body.dart';
import 'package:ecommerce_app/size_data.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  static String routeName = 'splashPage';
  const SplashScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: SplashScreenBody(),
    );
  }
}
