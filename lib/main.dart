import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';
import 'package:gooboba_mobile/bloc/main.dart';
import 'package:gooboba_mobile/routes.dart';
import 'package:gooboba_mobile/screens/discover/index.dart';
import 'package:gooboba_mobile/screens/onboarding/index.dart';
import 'package:gooboba_mobile/theme/style.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _isInitialised = false;

  @override
  Widget build(BuildContext context) {
    if (!_isInitialised) {
      FlutterStatusbarcolor.setStatusBarColor(primaryColor);
      FlutterStatusbarcolor.setStatusBarWhiteForeground(true);
      FlutterStatusbarcolor.setNavigationBarColor(primaryColor);
      FlutterStatusbarcolor.setNavigationBarWhiteForeground(true);

      _isInitialised = true;
    }

    return ChangeNotifierProvider<MainBloc>(
      create: (context) => MainBloc(),
      child: MaterialApp(
        title: 'Kashbase',
        // navigatorKey: locator<NavigationService>().navigatorKey,
        routes: routes,
        theme: appTheme,
        navigatorObservers: [],
        debugShowCheckedModeBanner: false,
        initialRoute: OnboardingIndex.routeName,
      ),
    );
  }
}
