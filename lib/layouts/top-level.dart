import 'package:flutter/material.dart';
import 'package:gooboba_mobile/screens/discover/index.dart';
import 'package:gooboba_mobile/theme/style.dart';
import 'package:gooboba_mobile/utils/custom_icons_icons.dart';
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
      return InkWell(
        child: Container(
          width: MediaQuery.of(context).size.width * 0.2,
          padding: EdgeInsets.only(
            top: 15.0,
            bottom: 10.0,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Icon(
                icon,
                size: 25,
                color: isActive ? Colors.white : Colors.white70,
              ),
              SizedBox(
                height: 10.0,
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
        ),
        onTap: url != null
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
          padding: EdgeInsets.only(bottom: 10.0),
          color: Theme.of(context).primaryColor,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              bottomBarIcon(
                  icon: MdiIcons.truck,
                  title: "List your car",
                  isActive: activePage == Pages.listCar,
                  url: DiscoverScreen.routeName),
              bottomBarIcon(
                  icon: CustomIcons.route,
                  title: "Activity",
                  isActive: activePage == Pages.activity,
                  url: DiscoverScreen.routeName),
              bottomBarIcon(
                  icon: MdiIcons.magnify,
                  title: "Discover",
                  isActive: activePage == Pages.discover,
                  url: DiscoverScreen.routeName),
              bottomBarIcon(
                  icon: CustomIcons.inbox,
                  title: "Inbox",
                  isActive: activePage == Pages.inbox,
                  url: DiscoverScreen.routeName),
              bottomBarIcon(
                  icon: CustomIcons.account_circle,
                  title: "Account",
                  isActive: activePage == Pages.account,
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
