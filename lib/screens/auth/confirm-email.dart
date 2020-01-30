import 'package:flutter/material.dart';
import 'package:gooboba_mobile/screens/discover/index.dart';
import 'package:gooboba_mobile/theme/style.dart';
import 'package:gooboba_mobile/widgets/buttons.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class ConfirmEmailScreen extends StatelessWidget {
  static final String routeName = '/auth/confirm-email';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        brightness: Brightness.light,
        leading: new IconButton(
          icon: new Icon(MdiIcons.keyboardBackspace, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        backgroundColor: Colors.grey,
        elevation: 0.0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            // TODO: animate!
            Container(
              width: 130.0,
              height: 130.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(130.0),
                border: Border.all(width: 5.0, color: Colors.white),
              ),
              child: Center(
                child: Icon(
                  Icons.check,
                  size: 70.0,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 60.0),
              child: Text(
                "Please click on the confirmation email we sent to sim@something.com to activate your account",
                textAlign: TextAlign.center,
                style: paragraphTextStyle.copyWith(
                    fontSize: 14.0,
                    color: Colors.white,
                    fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(
              height: 60.0,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: StyledBlockButton(
                color: Colors.white,
                onPressed: () {
                  Navigator.of(context).pushNamedAndRemoveUntil(
                      DiscoverScreen.routeName, (Route route) => false);
                },
                child: Text(
                  "Continue",
                  style: paragraphTextStyle.copyWith(
                    color: primaryColor,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
