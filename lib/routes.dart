import 'package:ecommerce_app/screens/login/login_screen.dart';
import 'package:ecommerce_app/screens/splash/splash_screen.dart';
import 'package:flutter/material.dart';

final Map<String, WidgetBuilder> appRoutes = {
  SplashScreen.routeName: (_) => SplashScreen(),
  LoginScreen.routeName: (_) => LoginScreen()
};
