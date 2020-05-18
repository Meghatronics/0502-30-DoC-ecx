import 'package:flutter/material.dart';
import 'package:ecx_30doc/utilities/constants.dart';

PageController myNavigator = PageController();

void navigateTo(int page) {
  myNavigator.jumpToPage(page);
}

class SquareNavButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final bool current;
  final int page;
  final Function setButtons;
  SquareNavButton(this.current, this.page,
      {this.label, this.icon, this.setButtons});

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(current ? 15 : 0, 0),
      child: FlatButton(
        padding: EdgeInsets.all(0),
        onPressed: () {
          navigateTo(page);
          setButtons();
        },
        child: Container(
          decoration: BoxDecoration(
             color: kECXdarkblue,
             borderRadius: BorderRadius.circular(6)
          ),
          constraints: BoxConstraints.tightFor(
              width: kNavBarWidth, height: kNavBarWidth),
         
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                icon,
                color: Colors.white60,
                size: 25,
              ),
              Text(
                label,
                style: TextStyle(
                  color: Colors.white60,
                  fontSize: 17,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DrawerNavigation extends StatefulWidget {
  @override
  DrawerNavigationState createState() => DrawerNavigationState();
}

class DrawerNavigationState extends State<DrawerNavigation> {
  bool page0Status = true;
  bool page1Status = false;
  bool page2Status = false;
  bool page3Status = false;

  void setButtons(int page) {
    page0Status = page == 0;
    page1Status = page == 1;
    page2Status = page == 2;
    page3Status = page == 3;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
        colors: [kECXblue, kECXdarkblue],
        stops: [0.05, 0.95],
        begin: Alignment.bottomRight,
        end: Alignment.topLeft,
      )),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(height: 10),
          //Home Nav Icon
          SquareNavButton(page0Status, 0, label: 'Home', icon: Icons.home,
              setButtons: () {
            setButtons(0);
          }),
          SizedBox(height: 10),
          //Teams Nav Icon
          SquareNavButton(page1Status, 1,
              label: 'Teams', icon: Icons.supervisor_account, setButtons: () {
            setButtons(1);
          }),
          SizedBox(height: 10),
          //Events Nav Icon
          SquareNavButton(page2Status, 2,
              label: 'Events', icon: Icons.calendar_today, setButtons: () {
            setButtons(2);
          }),
          SizedBox(height: 10),
          //About Nav Icon
          SquareNavButton(page3Status, 3,
              label: 'About', icon: Icons.info_outline, setButtons: () {
            setButtons(3);
          }),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}
