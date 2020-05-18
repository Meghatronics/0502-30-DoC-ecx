import 'package:ecx_30doc/pages/teams.dart';
import 'package:ecx_30doc/utilities/constants.dart';
import 'package:flutter/material.dart';

class TeamsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kECXdarkblue,
      appBar: AppBar(elevation: 0, backgroundColor: Colors.transparent),
      body: Container(
        constraints: BoxConstraints.expand(),
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'DESIGN TEAM',
              style: kTeamNameTextStyle.copyWith(
                  fontSize: 40, fontWeight: FontWeight.w600, color: kECXyellow),
            ),
            Expanded(
              child: ListView(
                children: <Widget>[
                  TeamMemberCard(),
                  TeamMemberCard(),
                  TeamMemberCard(),
                  TeamMemberCard(),
                  TeamMemberCard(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TeamMemberCard extends StatelessWidget {
  const TeamMemberCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 4, vertical: 8),
      padding: EdgeInsets.all(5),
      height: 200,
      decoration: BoxDecoration(
        color: kECXdarkblue,
        boxShadow: [
          BoxShadow(
            color: kECXblue,
            spreadRadius: 0,
            blurRadius: 3,
          )
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                child: ListTile(
                  contentPadding: EdgeInsets.all(0),
                  title: Text(
                    'Mr. Christopher Nwabuokei',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                  subtitle: Text('UI/UX Expert, Head of Design',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFFBBBBBB),
                      )),
                ),
              ),
              TeamMemberAvatar(),
            ],
          ),
          //  Spacer(),
          Text(
            'I love to concern myself with how users can feel the best whilst getting the best value out of any product I work with. This is my passion! Creating web and app interfaces that are both appealing to user\'s eye and mind',
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: Color(0xFFCCCCCC),
              fontSize: 13,
            ),
          ),
          //   Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Icon(Icons.add_box, color: kECXblue),
              Text(
                'chris_chris',
                style: TextStyle(
                  color: Color(0xFFEEEEEE),
                  fontSize: 14,
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Icon(Icons.add_box, color: kECXblue),
              Text(
                'chris_chris',
                style: TextStyle(
                  color: Color(0xFFEEEEEE),
                  fontSize: 14,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
