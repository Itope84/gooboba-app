import 'dart:io';

import 'package:flutter/material.dart';
import 'package:gooboba_mobile/screens/auth/confirm-email.dart';
import 'package:gooboba_mobile/theme/style.dart';
import 'package:gooboba_mobile/widgets/buttons.dart';
import 'package:gooboba_mobile/widgets/inputs.dart';
import 'package:image_picker/image_picker.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class AuthSignupScreen extends StatefulWidget {
  static final String routeName = '/auth/signup';

  @override
  _AuthSignupScreenState createState() => _AuthSignupScreenState();
}

class _AuthSignupScreenState extends State<AuthSignupScreen> {
  FocusNode _firstNameFocus, _lastNameFocus, _passwordFocus;
  File _image;

  @override
  void initState() {
    _firstNameFocus = new FocusNode();
    _lastNameFocus = new FocusNode();
    _passwordFocus = new FocusNode();

    super.initState();
  }

  Future getImage() async {
    final ImageSource imageSource = await showModalBottomSheet<ImageSource>(
      context: context,
      builder: (context) => Container(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 40.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "Select the image source",
                style: paragraphTextStyle,
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                children: <Widget>[
                  InkWell(
                    child: Container(
                      padding: EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      child: Column(
                        children: <Widget>[
                          Icon(
                            MdiIcons.camera,
                            size: 40.0,
                            color: Colors.grey[600],
                          ),
                          Text(
                            "Camera",
                            style: Theme.of(context).textTheme.body2,
                          )
                        ],
                      ),
                    ),
                    onTap: () => Navigator.pop(context, ImageSource.camera),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  InkWell(
                    child: Container(
                      padding: EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      child: Column(
                        children: <Widget>[
                          Icon(
                            MdiIcons.folderMultipleImage,
                            size: 40.0,
                            color: Colors.grey[600],
                          ),
                          Text(
                            "Gallery",
                            style: Theme.of(context).textTheme.body2,
                          )
                        ],
                      ),
                    ),
                    onTap: () => Navigator.pop(context, ImageSource.gallery),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );

    if (imageSource != null) {
      var image = await ImagePicker.pickImage(source: imageSource);

      setState(() {
        _image = image;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
            "Sign up",
            style: header2TextStyle.copyWith(
              color: Theme.of(context).primaryColor,
            ),
          ),
        ),
      ),
      body: ListView(
        children: <Widget>[
          SizedBox(
            height: 40.0,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 40.0),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Text(
                    "Give us a few details about yourself so we can identify you.",
                    style: paragraphTextStyle.copyWith(
                        fontSize: 14.0,
                        fontWeight: FontWeight.w600,
                        color: Colors.black87),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30.0,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 40.0),
            child: Container(
              height: 70.0,
              decoration: BoxDecoration(
                color: Color(0xFFF9FAFB),
                border: Border.all(color: Color(0xFFF9FAFB)),
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: InkWell(
                onTap: () {
                  getImage();
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    _image == null
                        ? FloatingActionButton(
                            onPressed: () {
                              getImage();
                            },
                            backgroundColor: accentGreen,
                            elevation: 0.0,
                            child: Icon(MdiIcons.plus),
                            mini: true,
                          )
                        : Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40.0),
                              image: DecorationImage(
                                image: FileImage(
                                  _image,
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      "Upload display picture",
                      style: Theme.of(context)
                          .textTheme
                          .body2
                          .copyWith(color: Colors.grey[700]),
                    )
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 30.0,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 40.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                RoundedMaterialTextFormField(
                  focus: _firstNameFocus,
                  nextFocus: _lastNameFocus,
                  hintText: "First Name",
                  textInputAction: TextInputAction.next,
                  onChanged: (val) {
                    setState(() {});
                  },
                ),
                SizedBox(
                  height: 30.0,
                ),
                RoundedMaterialTextFormField(
                  focus: _lastNameFocus,
                  nextFocus: _passwordFocus,
                  hintText: "Last Name",
                  textInputAction: TextInputAction.next,
                  onChanged: (val) {
                    setState(() {});
                  },
                ),
                SizedBox(
                  height: 30.0,
                ),
                RoundedMaterialTextFormField(
                  focus: _passwordFocus,
                  obscureText: true,
                  hintText: "Password",
                  textInputAction: TextInputAction.done,
                  onChanged: (val) {
                    setState(() {});
                  },
                ),
                SizedBox(
                  height: 40.0,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: StyledBlockButton(
              onPressed: () {
                Navigator.of(context)
                    .pushReplacementNamed(ConfirmEmailScreen.routeName);
              },
              child: Text(
                "Continue",
                style: paragraphTextStyle.copyWith(color: Colors.white),
              ),
            ),
          )
        ],
      ),
    );
  }
}
