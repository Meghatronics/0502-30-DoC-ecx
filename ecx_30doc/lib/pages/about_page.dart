import 'package:ecx_30doc/utilities/constants.dart';
import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 25, vertical: 100),
        constraints: BoxConstraints.tightFor(
            width: kScreenSize.width, height: kScreenSize.height),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.white, kECXyellow],
            // stops: [0.4,0.2],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('About Us',
                style: TextStyle(
                    fontSize: 50, fontWeight: FontWeight.w700, color: kECXred)),
            Text(
                "Our mission is to build better engineers. Engineering Career Expo is a platform established to create and environment"
                "of interaction between students and industry based personnel so as to empower them with relevant skills in the engineering field",
                style: TextStyle(fontSize: 18, color: Color(0xCC1C1C1C)),)
          ],
        ),
      ),
    ));
  }
}
