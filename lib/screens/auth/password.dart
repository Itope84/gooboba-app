import 'package:flutter/material.dart';
import 'package:gooboba_mobile/screens/discover/index.dart';
import 'package:gooboba_mobile/theme/style.dart';
import 'package:gooboba_mobile/widgets/buttons.dart';
import 'package:gooboba_mobile/widgets/inputs.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class AuthPassword extends StatefulWidget {
  static final String routeName = '/auth/password';
  @override
  _AuthPasswordState createState() => _AuthPasswordState();
}

class _AuthPasswordState extends State<AuthPassword> {
  bool _showPassword = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          brightness: Brightness.light,
          leading: new IconButton(
            icon: new Icon(MdiIcons.keyboardBackspace,
                color: Theme.of(context).primaryColor),
            onPressed: () => Navigator.of(context).pop(),
          ),
          backgroundColor: Colors.white,
          elevation: 0.0,
          title: Center(
            child: Text(
              "Enter your password",
              style: header2TextStyle.copyWith(
                color: Theme.of(context).primaryColor,
              ),
            ),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.0),
              child: Text(
                "Welcome Nwanne. Please enter your password to continue",
                style: paragraphTextStyle.copyWith(
                    color: Colors.black87,
                    fontSize: 14.0,
                    fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(
              height: 40.0,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.0),
              child: RoundedMaterialTextFormField(
                hintText: "Password",
                obscureText: !_showPassword,
                suffixIcon: IconButton(
                  icon: Icon(MdiIcons.eye),
                  onPressed: () {
                    setState(() {
                      _showPassword = !_showPassword;
                    });
                  },
                ),
                textAlign: TextAlign.center,
                onChanged: (val) {
                  setState(() {});
                },
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            StyledBlockButton(
              child: Text(
                "Log In",
                style: paragraphTextStyle.copyWith(
                    color: Colors.white, fontWeight: FontWeight.w600),
              ),
              onPressed: () {
                // _bloc.email = _email;
                Navigator.of(context).pushNamed(DiscoverScreen.routeName);
              },
            ),
          ],
        ));
  }
}
