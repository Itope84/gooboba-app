import 'package:flutter/material.dart';
import 'package:gooboba_mobile/screens/discover/index.dart';
import 'package:gooboba_mobile/screens/onboarding/index.dart';

var routes = <String, WidgetBuilder>{
  OnboardingIndex.routeName: (BuildContext context) => OnboardingIndex(),
  DiscoverScreen.routeName: (BuildContext context) => DiscoverScreen(),
};
