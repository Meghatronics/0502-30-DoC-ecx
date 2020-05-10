import 'package:ecx_30doc/pages/landing_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(ECXApp());

class ECXApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Engineering Career Expo",
        home: LandingPage(),
        routes: {
          'landing_page': (context) => LandingPage(),
        });
  }
}
