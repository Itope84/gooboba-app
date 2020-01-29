import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';
import 'package:gooboba_mobile/bloc/main.dart';
import 'package:gooboba_mobile/screens/auth/password.dart';
import 'package:gooboba_mobile/theme/style.dart';
import 'package:gooboba_mobile/widgets/buttons.dart';
import 'package:gooboba_mobile/widgets/inputs.dart';
import 'package:gooboba_mobile/widgets/text_with_link.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:provider/provider.dart';

class AuthEmail extends StatefulWidget {
  static final String routeName = '/auth/email';

  @override
  _AuthEmailState createState() => _AuthEmailState();
}

class _AuthEmailState extends State<AuthEmail> {
  MainBloc _bloc;
  bool _isInitialised = false;
  String _email;

  @override
  void initState() {
    _email = '';
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    if (!_isInitialised) {
      FlutterStatusbarcolor.setStatusBarColor(Colors.white);
      FlutterStatusbarcolor.setStatusBarWhiteForeground(false);

      setState(() {
        _bloc = Provider.of<MainBloc>(context);
      });

      _isInitialised = true;
    }

    return Scaffold(
      resizeToAvoidBottomPadding: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        brightness: Brightness.light,
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Center(
          child: Text(
            "Get started",
            style: header2TextStyle.copyWith(
                color: Theme.of(context).primaryColor),
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.0),
            child: RoundedMaterialTextFormField(
              hintText: "Email",
              onChanged: (val) {
                setState(() {
                  _email = val;
                });
              },
            ),
          ),
          SizedBox(
            height: 30.0,
          ),
          StyledBlockButton(
            child: Text(
              "Continue",
              style: paragraphTextStyle.copyWith(
                  color: Colors.white, fontWeight: FontWeight.w600),
            ),
            onPressed: () {
              _bloc.email = _email;
              Navigator.of(context).pushNamed(AuthPassword.routeName);
            },
          ),
          SizedBox(
            height: 30.0,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: Divider(
                    height: 1.0,
                    thickness: 1.0,
                    color: Colors.grey,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child: Text(
                    "CONTINUE WITH",
                    style: paragraphTextStyle.copyWith(
                        color: Colors.black87, height: 1.0),
                  ),
                ),
                Expanded(
                  child: Divider(
                    height: 1.0,
                    thickness: 1.0,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 40.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                FloatingActionButton(
                  heroTag: 'facebook',
                  onPressed: () {},
                  backgroundColor: Theme.of(context).primaryColor,
                  mini: true,
                  elevation: 0,
                  child: Icon(MdiIcons.facebook),
                ),
                FloatingActionButton(
                  heroTag: 'twitter',
                  onPressed: () {},
                  backgroundColor: Theme.of(context).primaryColor,
                  mini: true,
                  elevation: 0,
                  child: Icon(MdiIcons.twitter),
                ),
                FloatingActionButton(
                  heroTag: 'google',
                  onPressed: () {},
                  backgroundColor: Theme.of(context).primaryColor,
                  mini: true,
                  elevation: 0,
                  child: Icon(MdiIcons.google),
                )
              ],
            ),
          ),
          SizedBox(
            height: 40.0,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 60.0),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: TextWithLink(
                    text:
                        "By clicking continue, you confirm that you agree to our [https://www.gooboba.com](Terms of Use) and have read and understood our [https://gooboba.com](Privacy Policy).",
                    style: TextStyle(color: Colors.grey, fontSize: 10.0),
                    linkColor: Theme.of(context).primaryColor,
                    align: TextAlign.center,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
