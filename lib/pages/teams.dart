import 'dart:math';

import 'package:ecx_30doc/pages/teams_view.dart';
import 'package:ecx_30doc/utilities/constants.dart';
import 'package:flutter/material.dart';

class TeamsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    kScreenSize = MediaQuery.of(context).size;
    return Container(
      constraints: BoxConstraints.tightFor(
        width: kScreenSize.width,
        height: kScreenSize.height * 0.85,
      ),
      padding: EdgeInsets.symmetric(horizontal: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.only(left: 15.0, bottom: 8),
            child: Text(
              'Teams',
              style: TextStyle(
                  fontSize: 45, color: kECXblue, fontWeight: FontWeight.w500),
            ),
          ),
          Expanded(
            flex: 10,
            child: ListView(
              children: <Widget>[
                TeamsGroupCard(teamName: 'DESIGN'),
                TeamsGroupCard(teamName: 'TUTORS'),
                TeamsGroupCard(teamName: 'ADMIN'),
                TeamsGroupCard(teamName: 'CHIEFS'),
                TeamsGroupCard(teamName: 'ENGINEERING'),
                TeamsGroupCard(teamName: 'PR'),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class TeamsGroupCard extends StatelessWidget {
  final String teamName;

  const TeamsGroupCard({this.teamName});

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      padding: EdgeInsets.all(0),
      onPressed: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => TeamsView()));
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 8),
        constraints: BoxConstraints.tightFor(height: 190),
        decoration: BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(
            color: kECXdarkblue,
            blurRadius: 4,
            offset: Offset(1, 4),
          )
        ]),
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Container(
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 0),
              // decoration:
              //     BoxDecoration(color: Color.fromARGB(100, 100, 100, 100)),
              foregroundDecoration:
                  BoxDecoration(color: Color.fromARGB(100, 100, 100, 100)),
              child: Wrap(
                runAlignment: WrapAlignment.spaceBetween,
                children: <Widget>[
                  TeamMemberAvatar(),
                  TeamMemberAvatar(),
                  TeamMemberAvatar(),
                  TeamMemberAvatar(),
                  TeamMemberAvatar(),
                  TeamMemberAvatar(),
                  TeamMemberAvatar(),
                  TeamMemberAvatar(),
                  TeamMemberAvatar(),
                  TeamMemberAvatar(),
                  TeamMemberAvatar(),
                ],
              ),
            ),
            Positioned(
                top: 10,
                left: 15,
                width: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Icon(
                      Icons.person,
                      color: kECXred,
                    ),
                    Text(
                      '20',
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: kECXdarkblue),
                    ),
                    Text(
                      'Members',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: kECXdarkblue),
                    ),
                  ],
                )),
            Positioned(
              bottom: 10,
              right: 15,
              child: Text(
                teamName,
                style: kTeamNameTextStyle,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class TeamMemberAvatar extends StatelessWidget {
  const TeamMemberAvatar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      constraints: BoxConstraints.tightForFinite(height: 80, width: 60),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Color.fromARGB(
            Random().nextInt(100) + 155,
            Random().nextInt(255),
            Random().nextInt(255),
            Random().nextInt(255)),
      ),
    );
  }
}
