import 'package:flutter/material.dart';
import 'package:gooboba_mobile/screens/auth/confirm-email.dart';
import 'package:gooboba_mobile/screens/auth/email.dart';
import 'package:gooboba_mobile/screens/auth/password.dart';
import 'package:gooboba_mobile/screens/auth/signup.dart';
import 'package:gooboba_mobile/screens/discover/index.dart';
import 'package:gooboba_mobile/screens/onboarding/index.dart';

var routes = <String, WidgetBuilder>{
  OnboardingIndex.routeName: (BuildContext context) => OnboardingIndex(),
  DiscoverScreen.routeName: (BuildContext context) => DiscoverScreen(),
  AuthEmail.routeName: (BuildContext context) => AuthEmail(),
  AuthPassword.routeName: (BuildContext context) => AuthPassword(),
  AuthSignupScreen.routeName: (BuildContext context) => AuthSignupScreen(),
  ConfirmEmailScreen.routeName: (BuildContext context) => ConfirmEmailScreen(),
};
