import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';
import 'package:gooboba_mobile/bloc/main.dart';
import 'package:gooboba_mobile/routes.dart';
import 'package:gooboba_mobile/screens/discover/index.dart';
import 'package:gooboba_mobile/theme/style.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    FlutterStatusbarcolor.setStatusBarColor(Colors.white);
    FlutterStatusbarcolor.setStatusBarWhiteForeground(false);
    FlutterStatusbarcolor.setNavigationBarColor(Colors.green);
    FlutterStatusbarcolor.setNavigationBarWhiteForeground(true);

    print("geeee");
    // SystemChrome.setEnabledSystemUIOverlays(
    // [SystemUiOverlay.top, SystemUiOverlay.bottom]);
    // SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    // systemNavigationBarColor: Colors.blue,
    // systemNavigationBarDividerColor: Colors.green));

    return ChangeNotifierProvider<MainBloc>(
      create: (context) => MainBloc(),
      child: MaterialApp(
        title: 'Kashbase',
        // navigatorKey: locator<NavigationService>().navigatorKey,
        routes: routes,
        theme: appTheme,
        navigatorObservers: [],
        debugShowCheckedModeBanner: false,
        initialRoute: DiscoverScreen.routeName,
      ),
    );
  }
}
