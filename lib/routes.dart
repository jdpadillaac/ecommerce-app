import 'package:ecommerce_app/screens/complete_profile/complete_profile.dart';
import 'package:ecommerce_app/screens/forgot_password/forgot_password_screen.dart';
import 'package:ecommerce_app/screens/home/home_screen.dart';
import 'package:ecommerce_app/screens/login/login_screen.dart';
import 'package:ecommerce_app/screens/login_success/login_success_screen.dart';
import 'package:ecommerce_app/screens/sign_up/sigm_up_screen.dart';
import 'package:ecommerce_app/screens/splash/splash_screen.dart';
import 'package:flutter/material.dart';

final Map<String, WidgetBuilder> appRoutes = {
  SplashScreen.routeName: (_) => SplashScreen(),
  LoginScreen.routeName: (_) => LoginScreen(),
  ForgotPasswordScreen.routeName: (_) => ForgotPasswordScreen(),
  LoginSuccesScrenn.routeName: (_) => LoginSuccesScrenn(),
  HomeScreen.routeName: (_) => HomeScreen(),
  SignUpScreen.routeName: (_) => SignUpScreen(),
  CompleteProfileScreen.routeName: (_) => CompleteProfileScreen()
};
