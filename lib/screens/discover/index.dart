import 'package:flutter/material.dart';
import 'package:gooboba_mobile/layouts/top-level.dart';
import 'package:gooboba_mobile/theme/style.dart';
import 'package:gooboba_mobile/utils/enums/pages.dart';
import 'package:gooboba_mobile/widgets/buttons.dart';

class DiscoverScreen extends StatefulWidget {
  static final String routeName = '/discover';

  @override
  _DiscoverScreenState createState() => _DiscoverScreenState();
}

class _DiscoverScreenState extends State<DiscoverScreen> {
  Widget _discoverBox() => Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(bottom: 10.0),
            child: Text(
              "Rent a Ride",
              style: whiteMainHeader,
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 10.0),
            child: Text(
              "Enjoy your day",
              style: whiteMainHeader,
            ),
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: Card(
                  child: Container(
                    padding: EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "PICK UP",
                          style: boldParagraphTextStyle.copyWith(
                            height: 1.5,
                            fontSize: 14.0,
                          ),
                        ),
                        Text(
                          "Where do you want to pick up the car?",
                          style: mutedText.copyWith(height: 1.7),
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: InputDecorator(
                                decoration: InputDecoration(
                                  // icon: Icon(Icons.colorize),
                                  // labelText: 'Color',
                                  contentPadding: EdgeInsets.only(
                                    bottom: 0.0,
                                    top: 0.0,
                                    left: 0.0,
                                  ),
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      width: 0.5,
                                      color: Colors.grey[400],
                                    ),
                                  ),
                                ),
                                child: DropdownButtonHideUnderline(
                                  child: ButtonTheme(
                                    alignedDropdown: true,
                                    child: DropdownButton<String>(
                                      onChanged: (String bankId) {
                                        setState(() {});
                                      },
                                      items: [
                                        DropdownMenuItem(
                                          value: "island",
                                          child: Text("Lagos Island"),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 15.0,
                        ),

                        // from
                        Text(
                          "FROM",
                          style: boldParagraphTextStyle.copyWith(
                            height: 1.5,
                            fontSize: 14.0,
                          ),
                        ),
                        Text(
                          "When do you need the car?",
                          style: mutedText.copyWith(height: 1.7),
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: TextFormField(
                                style: TextStyle(height: 1.0),
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.only(bottom: 0.0),
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      width: 0.5,
                                      color: Colors.grey[400],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15.0,
                        ),

                        // Till
                        Text(
                          "TILL",
                          style: boldParagraphTextStyle.copyWith(
                            height: 1.5,
                            fontSize: 14.0,
                          ),
                        ),
                        Text(
                          "When do you need the car?",
                          style: mutedText.copyWith(height: 1.7),
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: TextFormField(
                                style: TextStyle(height: 1.0),
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.only(bottom: 0.0),
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      width: 0.5,
                                      color: Colors.grey[400],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15.0,
                        ),
                        StyledBlockButton(
                          child: Text("Get Started"),
                          color: accentGreen,
                          onPressed: () {},
                        )
                      ],
                    ),
                  ),
                  elevation: 2.0,
                ),
              )
            ],
          )
        ],
      );

  @override
  Widget build(BuildContext context) {
    return TopLevelLayout(
      activePage: Pages.discover,
      child: ListView(
        children: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 50.0),
            child: _discoverBox(),
          ),
          Container(
            color: Colors.white,
            padding: EdgeInsets.symmetric(vertical: 25.0),
            height: 350.0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  "The Gooboba Assurance",
                  style:
                      mainHeaderTextStyle.copyWith(fontWeight: FontWeight.w900),
                ),
                Expanded(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Flexible(
                        flex: 5,
                        child: Padding(
                          padding: EdgeInsets.only(left: 20.0),
                          child: Text(
                            "You are always covered with the help of our insurance and risk managers.",
                            style: paragraphTextStyle.copyWith(
                                height: 2.0, fontSize: 14.0),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 4,
                        child: Container(
                          child: Image.asset(
                            'assets/images/car-clipped.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      )
                    ],
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
