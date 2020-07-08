import 'package:flutter/material.dart';
import 'package:getx_pattern_site/app/modules/home/home_controller.dart';
import 'package:getx_pattern_site/app/modules/home/widgets/custom_drawer_widget.dart';
import 'package:getx_pattern_site/app/theme/app_colors.dart';

class HomePage extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  final HomeController controller = HomeController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: CustomDrawer(),
      body:Stack(
        children: <Widget>[
          Container(
              color: Colors.red,
              padding: EdgeInsets.all(0),
              child: controller.screens[controller.screen]),
          Positioned(
            left: 5,
            child: SafeArea(
              child: IconButton(
                icon: Icon(Icons.menu, color: spotlightColor),
                onPressed: () {
                  //drawer menu
                  _scaffoldKey.currentState.openDrawer();
                },
                splashColor: Theme.of(context).accentColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
