import 'package:ecx_30doc/utilities/constants.dart';
import 'package:flutter/material.dart';

class AboutPage extends StatefulWidget {
  @override
  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage>
    with SingleTickerProviderStateMixin {
  AnimationController animator;
  Animation<double> animation;

  @override
  void initState() {
    super.initState();
    animator = AnimationController(vsync: this, duration: Duration(seconds: 2));
    animation = Tween<double>(begin: 0, end: 1).animate(animator)
      ..addListener(() {
        setState(() {});
      });
    animator.forward();
  }

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
            child: Transform.translate(
              offset: Offset(0, animation.value * -20),
              child: Opacity(
                opacity: animation.value,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('About Us',
                        style: TextStyle(
                            fontSize: 50,
                            fontWeight: FontWeight.w700,
                            color: kECXred)),
                    Text(
                      "Our mission is to build better engineers. Engineering Career Expo is a platform established to create and environment"
                      "of interaction between students and industry based personnel so as to empower them with relevant skills in the engineering field",
                      style: TextStyle(fontSize: 18, color: Color(0xCC1C1C1C)),
                    )
                  ],
                ),
              ),
            )),
      ),
    );
  }
}
