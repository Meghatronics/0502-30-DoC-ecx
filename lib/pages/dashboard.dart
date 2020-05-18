import 'dart:math';

import 'package:flutter/material.dart';
import 'package:ecx_30doc/utilities/constants.dart';
import 'package:ecx_30doc/utilities/custom_widgets.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  double headerHeight = kScreenSize.height * 0.15;

  double navBarChangeProperty = 0;

  @override
  Widget build(BuildContext context) {
    kScreenSize = MediaQuery.of(context).size;

    return Scaffold(
        backgroundColor: Color(0xFFEEEEEE),
        body: SingleChildScrollView(
          child: Container(
            constraints: BoxConstraints.tightFor(
                width: kScreenSize.width, height: kScreenSize.height),
            child: Stack(
              children: <Widget>[
                AnimatedPositioned(
                  left: kNavBarWidth + navBarChangeProperty,
                  top: headerHeight,
                  right: 0,
                  bottom: 0,
                  duration: Duration(milliseconds: 500),
                  child: GestureDetector(
                    onHorizontalDragUpdate: (dragUpdateDetails) {
                      setState(() {
                        navBarChangeProperty =
                            navBarChangeProperty + dragUpdateDetails.delta.dx;
                        if (navBarChangeProperty > 0)
                          navBarChangeProperty = 0;
                        else if (navBarChangeProperty < -kNavBarWidth)
                          navBarChangeProperty = -kNavBarWidth;
                      });
                    },
                    onHorizontalDragEnd: (dragEndDetails) {
                      setState(() {
                        if (navBarChangeProperty > -0.6 * kNavBarWidth)
                          navBarChangeProperty = 0;
                        else if (navBarChangeProperty < -0.6 * kNavBarWidth)
                          navBarChangeProperty = -kNavBarWidth;
                      });
                    },
                    child: Container(
                      child: PageView.builder(
                        controller: myNavigator,
                        physics: NeverScrollableScrollPhysics(),
                        itemBuilder: (context, page) {
                          return pageList[page];
                        },
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 40,
                  left: 0,
                  child: IconButton(
                    icon: Icon(Icons.menu),
                    onPressed: () {
                      setState(() {
                        navBarChangeProperty =0;
                      });
                    },
                  ),
                ),
                AnimatedPositioned(
                  top: 0,
                  left: navBarChangeProperty,
                  bottom: 0,
                  width: kNavBarWidth,
                  duration: Duration(milliseconds: 300),
                  child: DrawerNavigation(),
                ),
              ],
            ),
          ),
        ));
  }
}
