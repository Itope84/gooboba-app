import 'package:flutter/material.dart';
import 'package:gooboba_mobile/screens/discover/index.dart';
import 'package:gooboba_mobile/theme/style.dart';
import 'package:gooboba_mobile/utils/enums/pages.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class TopLevelLayout extends StatelessWidget {
  final Widget child;
  final Pages activePage;
  final Widget fab;
  TopLevelLayout({this.child, this.activePage = Pages.discover, this.fab});

  @override
  Widget build(BuildContext context) {
    Widget bottomBarIcon(
        {IconData icon = Icons.search,
        String title = "Discover",
        bool isActive = false,
        String url}) {
      return FlatButton(
        padding: EdgeInsets.symmetric(vertical: 15.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Icon(
              icon,
              size: 26,
              color: isActive ? Colors.white : Colors.white70,
            ),
            Text(
              title,
              style: smallText.copyWith(
                height: 1.3,
                fontSize: 13.0,
                color: isActive ? Colors.white : Colors.white70,
              ),
            )
          ],
        ),
        onPressed: url != null
            ? () {
                Navigator.of(context).pushReplacementNamed(url);
              }
            : null,
      );
    }

    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      bottomNavigationBar: BottomAppBar(
        child: Container(
          color: Theme.of(context).primaryColor,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              bottomBarIcon(
                  icon: MdiIcons.viewDashboard,
                  title: "Home",
                  isActive: activePage != Pages.discover,
                  url: DiscoverScreen.routeName),
              bottomBarIcon(
                  icon: MdiIcons.viewDashboard,
                  title: "Home",
                  isActive: activePage == Pages.discover,
                  url: DiscoverScreen.routeName),
              bottomBarIcon(
                  icon: MdiIcons.viewDashboard,
                  title: "Home",
                  isActive: activePage != Pages.discover,
                  url: DiscoverScreen.routeName),
              bottomBarIcon(
                  icon: MdiIcons.viewDashboard,
                  title: "Home",
                  isActive: activePage == Pages.discover,
                  url: DiscoverScreen.routeName),
            ],
          ),
        ),
        color: Theme.of(context).primaryColor,
      ),
      floatingActionButton: fab,
      body: child,
    );
  }
}
