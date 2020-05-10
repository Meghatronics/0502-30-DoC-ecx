import 'dart:async';

import 'package:ecx_30doc/pages/about_page.dart';
import 'package:ecx_30doc/utilities/constants.dart';
import 'package:flutter/material.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  PageController albumController = PageController();

  void _scrollAlbum() {
    albumController.animateToPage(albumController.page.toInt() + 1,
        duration: Duration(milliseconds: 900),
        curve: Curves.fastLinearToSlowEaseIn);
  }

//Do timer to scroll Page
//Timer scrollInterval = Timer(Duration(seconds: 3,) _scrollAlbum(),);

  @override
  Widget build(BuildContext context) {
    kScreenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        color: Colors.cyan,
        child: SingleChildScrollView(
          child: Container(
            constraints: BoxConstraints.tightFor(
                width: kScreenSize.width, height: kScreenSize.height),
            child: Stack(alignment: Alignment.center, children: <Widget>[
              PageView.builder(
                itemBuilder: (context, pages) {
                  return Container(
                    decoration: BoxDecoration(
                        color: Color(0xAA6090fe),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          colorFilter: ColorFilter.mode(
                              Color(0xAA6090fe), BlendMode.overlay),
                          image:
                              new NetworkImage('https://picsum.photos/200/300'),
                        )),
                  );
                },
                physics: BouncingScrollPhysics(),
                controller: albumController,
              ),
              Positioned(
                bottom: 20,
                right: 10,
                child: FlatButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (BuildContext context) {
                          return AboutPage();
                        }),
                      );
                    },
                    padding: EdgeInsets.all(0),
                    child: Text(
                      'Find out more about ECX',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        decoration: TextDecoration.underline,
                      ),
                    )),
              ),
              Positioned(
                bottom: kScreenSize.height * 0.1,
                child: Container(
                  width: kScreenSize.width * 0.8,
                  height: kScreenSize.height * 0.35,
                  child: Column(
                    children: <Widget>[
                      Text(
                        'Become part of the exciting volunteer team at ECX and begin contributing to community',
                        maxLines: 5,
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Spacer(),
                      Container(
                        constraints: BoxConstraints.tightFor(
                          width: kScreenSize.width * 0.8,
                          height: 50,
                        ),
                        child: RaisedButton(
                            color: kECXred,
                            onPressed: () {
                              _scrollAlbum();
                            },
                            child: Text(
                              'REGISTER',
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            )),
                      ),
                      Spacer(),
                      Text(
                        'Already a member? ',
                        maxLines: 5,
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: 20),
                      Container(
                        constraints: BoxConstraints.tightFor(
                          width: kScreenSize.width * 0.8,
                          height: 50,
                        ),
                        child: RaisedButton(
                          color: kECXyellow,
                          onPressed: () {},
                          child: Text(
                            'SIGN IN',
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
