import 'package:ecx_30doc/pages/about_page.dart';
import 'package:ecx_30doc/pages/landing_page.dart';
import 'package:ecx_30doc/pages/teams.dart';
import 'package:flutter/material.dart';

//Sizes
Size kScreenSize;
const double kNavBarWidth = 50;

//Colors
const Color kECXyellow = Color(0xFFFEAF2E);
const Color kECXred = Color(0xFFFF403D);
const Color kECXdarkblue = Color(0xFF223546);
const Color kECXblue = Color(0xFF37AEFF);

//Text Styles

const TextStyle kTeamNameTextStyle =
    TextStyle(fontSize: 30, fontWeight: FontWeight.w900, color: Colors.white);

//Assets
const List<ImageProvider> slideImages = [
  AssetImage('images/slide1.jpg'),
  AssetImage('images/slide2.jpg'),
  AssetImage('images/slide3.jpg'),
  AssetImage('images/slide4.jpg'),
  AssetImage('images/slide5.jpg'),
];

Map<int, Widget> pageList = {
  0: Container(color: Colors.cyan),
  1: TeamsPage(),
  2: Container(color: Colors.lightBlueAccent),
  3: AboutPage(),
};
