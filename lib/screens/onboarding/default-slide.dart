import 'package:flutter/material.dart';

class DefaultOnboardingSlide extends StatelessWidget {
  final Widget image, header, description;
  DefaultOnboardingSlide({this.image, this.header, this.description});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height * 0.4,
              child: image,
            ),
            SizedBox(
              height: 30.0,
            ),
            header,
            SizedBox(
              height: 20.0,
            ),
            description
          ],
        ));
  }
}
